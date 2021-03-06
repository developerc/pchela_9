// SMSC.RU API ��� Delphi 7 (www.smsc.ru) ������ 2.4 (22.10.2011)
unit smsc_api;

interface

uses IdHTTP, IdURI, IdMessage, IdSMTP, IdStrings, SysUtils, Forms, Classes, DateUtils, Types, Windows;

const
	// ��������� � ����������� ��������
	SMSC_LOGIN: String = 'developerc';			// ����� �������
	SMSC_PASSWORD: String = 'borland';	// ������ ��� MD5-��� ������ � ������ ��������
	SMSC_POST: Boolean = False;				// ������������ ����� POST
	SMSC_CHARSET: String = 'windows-1251';	// ��������� ��������� (utf-8 ��� koi8-r), �� ��������� ������������ windows-1251
	SMSC_DEBUG: Boolean = False;			// ���� �������

	// ��������� ��� �������� SMS �� SMTP
	SMTP_FROM: String = 'api@smsc.ru';		// e-mail ����� �����������
	SMTP_SERVER: String = 'send.smsc.ru';	// ����� smtp �������
	SMTP_LOGIN: String = '';				// ����� ��� smtp �������
	SMTP_PASSWORD: String = '';				// ������ ��� smtp �������

type
	SMSC = class
	public
		// ������������� ������ ������ SMS�
		function send_sms(phones: String; mes: String; translit: Integer = 0; time: String = ''; id: Integer = 0; format: Integer = 0; sender: String = ''; query: String = ''): TStringDynArray;
		procedure send_sms_mail(phones: String; mes: String; translit: Integer = 0; time: String = ''; id: Integer = 0; format: Integer = 0; senderid: String = '');
		function get_sms_cost(phones: String; mes: String; translit: Integer = 0; format: Integer = 0; sender: String = ''; query: String = ''): TStringDynArray;
		function get_status(id: Integer; phone: String): TStringDynArray;
		function get_balance: String;

	private
		// ��������� ������ ������ SMS�
		function _smsc_send_cmd(cmd: String; arg: String): TStringDynArray;
		function _urlencode(str: String): String;
		procedure _print_debug(str: String);
		function _ifs(cond: Boolean; val1: String; val2: String): String;
	end;

var
	formats: array[1..6] of String = ('flash=1', 'push=1', 'hlr=1', 'bin=1', 'bin=2', 'ping=1');

implementation

uses Unit1;

// ����� �������� SMS
//
// ������������ ���������:
//
// phones - ������ ��������� ����� ������� ��� ����� � �������
// mes - ������������ ���������
//
// �������������� ���������:
//
// translit - ���������� ��� ��� � ��������
// time - ����������� ����� �������� � ���� ������ (DDMMYYhhmm, h1-h2, 0ts, +m)
// id - ������������� ���������. ������������ ����� 32-������ ����� � ��������� �� 1 �� 2147483647.
// format - ������ ��������� (0 - ������� sms, 1 - flash-sms, 2 - wap-push, 3 - hlr, 4 - bin, 5 - bin-hex, 6 - ping-sms)
// sender - ��� ����������� (Sender ID). ��� ���������� Sender ID �� ��������� ���������� � �������� �����
// �������� ������ ������ ��� �����.
// query - ������ �������������� ����������, ����������� � URL-������ ('valid=01:00&maxsms=3')
//
// ���������� ������ (<id>, <���������� sms>, <���������>, <������>) � ������ �������� ��������
// ���� (<id>, -<��� ������>) � ������ ������

function SMSC.send_sms(phones: String; mes: String; translit: Integer = 0; time: String = ''; id: Integer = 0; format: Integer = 0; sender: String = ''; query: String = ''): TStringDynArray;
begin
	Result := _smsc_send_cmd('send', 'cost=3&charset=' + SMSC_CHARSET + '&phones=' + _urlencode(phones) + '&mes=' + _urlencode(mes) + '&id=' + IntToStr(id) + '&translit=' + IntToStr(translit) +
							_ifs(format > 0, '&' + formats[format], '') + _ifs(sender <> '', '&sender=' + _urlencode(sender), '') + _ifs(time <> '', '&time=' + _urlencode(time), '') + _ifs(query <> '', '&' + query, ''));

	// (id, cnt, cost, balance) ��� (id, -error)

	if SMSC_DEBUG then
		if StrToInt(Result[1]) > 0 then
			_print_debug('��������� ���������� �������. ID: ' + Result[0] + ', ����� SMS: ' + Result[1]
						+ ', ���������: ' + Result[2] + ' ���., ������: ' + Result[3] + ' ���.')
		else
			_print_debug('������ �' + Result[1][2] + ', ID: ' + Result[0]);
end;

// SMTP ������ ������ �������� SMS

procedure SMSC.send_sms_mail(phones: String; mes: String; translit: Integer = 0; time: String = ''; id: Integer = 0; format: Integer = 0; senderid: String = '');
var
	msg: TIdMessage;
begin
	msg := TIdMessage.Create(nil);

	with TIdSMTP.Create(nil) do
	begin
		Port := 25;
		Host := SMTP_SERVER;

   		if SMTP_LOGIN <> '' then
        begin
			Username := SMTP_LOGIN;
			Password := SMTP_PASSWORD;
        end;

		msg.Recipients.EMailAddresses := 'send@send.smsc.ru';
		msg.From.Address := SMTP_FROM;
		msg.CharSet := SMSC_CHARSET;
		msg.Body.Add(SMSC_LOGIN + ':' + SMSC_PASSWORD + ':' + IntToStr(id) + ':' + time + ':' + IntToStr(translit) + ',' + IntToStr(format) + ',' + senderid + ':' + phones + ':' + mes);

		Connect;
		Send(msg);
		Disconnect;
		Destroy;
	end;

	msg.Destroy;
end;

// ����� ��������� ��������� SMS
//
// ������������ ���������:
//
// phones - ������ ��������� ����� ������� ��� ����� � �������
// message - ������������ ���������
//
// �������������� ���������:
//
// translit - ���������� ��� ��� � ��������
// format - ������ ��������� (0 - ������� sms, 1 - flash-sms, 2 - wap-push, 3 - hlr, 4 - bin, 5 - bin-hex, 6 - ping-sms)
// sender - ��� ����������� (Sender ID)
// query - ������ �������������� ����������, ����������� � URL-������ ('list=79999999999:��� ������: 123'#13#10 + '78888888888:��� ������: 456')
//
// ���������� ������ (<���������>, <���������� sms>) ���� (0, -<��� ������>) � ������ ������

function SMSC.get_sms_cost(phones: String; mes: String; translit: Integer = 0; format: Integer = 0; sender: String = ''; query: String = ''): TStringDynArray;
begin
	Result := _smsc_send_cmd('send', 'cost=1&charset=' + SMSC_CHARSET + '&phones=' + _urlencode(phones) + '&mes=' + _urlencode(mes) + '&translit=' + IntToStr(translit) +
							_ifs(format > 0, '&' + formats[format], '') + _ifs(sender <> '', '&sender=' + _urlencode(sender), '') + _ifs(query <> '', '&' + query, ''));

	// (cost, cnt) ��� (0, -error)

	if SMSC_DEBUG then
		if StrToInt(Result[1]) > 0 then
			_print_debug('��������� ��������: ' + Result[0] + ' ���. ����� SMS: ' + Result[1])
		else
			_print_debug('������ �' + Result[1][2]);
end;

// ����� �������� ������� ������������� SMS ��� HLR-�������
//
// id - ID c��������
// phone - ����� ��������
//
// ���������� ������:
// ��� ������������� SMS (<������>, <����� ���������>, <��� ������ sms>)
// ��� HLR-������� (<������>, <����� ���������>, <��� ������ sms>, <��� ������ �����������>, <��� ��������� ��������>,
// <�������� ������ �����������>, <�������� ��������� ��������>, <�������� ����������� ������>, <�������� ������������ ���������>,
// <��� IMSI SIM-�����>, <����� ������-������>)
// ���� (0, -<��� ������>) � ������ ������

function SMSC.get_status(id: Integer; phone: String): TStringDynArray;
var
	ans: String;
	TZInfo: TIME_ZONE_INFORMATION;
begin
	Result := _smsc_send_cmd('status', 'phone=' + _urlencode(phone) + '&id=' + IntToStr(id));

	// (status, time, err) ��� (0, -error)

	if SMSC_DEBUG then
		if (Result[1] <> '') and (StrToInt(Result[1]) >= 0) then
		begin
			ans := '������ SMS = ' + Result[0];
			GetTimeZoneInformation(TZInfo);
			if StrToInt(Result[1]) > 0 then ans := ans + ', ����� ��������� ������� - ' + DateTimeToStr(UnixToDateTime(StrToInt64(Result[1]) - TZInfo.Bias * 60));
			_print_debug(ans);
		end
		else
			_print_debug('������ �' + Result[1][2]);
end;

// ����� ��������� �������
//
// ��� ����������
//
// ���������� ������ � ���� ������ ��� ������ ������ � ������ ������

function SMSC.get_balance: String;
var
	bal: TStringDynArray;
begin
	bal := _smsc_send_cmd('balance', ''); // (balance) ��� (0, -error)

	if SMSC_DEBUG then
		if Length(bal) = 1 then
			_print_debug('����� �� �����: ' + bal[0] + ' ���.')
		else
			_print_debug('������ �' + bal[1][2]);

	if Length(bal) = 1 then
		Result := bal[0]
	else
		Result := '';
end;

// ��������� ������
//
// ����� ������ �������. ��������� URL � ������ 3 ������� ������

function SMSC._smsc_send_cmd(cmd: String; arg: String): TStringDynArray;
var
	par: TStringStream;
	aurl, s: String;
	cnt: Integer;
begin
	arg := 'login=' + _urlencode(SMSC_LOGIN) + '&psw=' + _urlencode(SMSC_PASSWORD) + '&fmt=1&' + arg;
	aurl := 'http://smsc.ru/sys/' + cmd + '.php';

	with TIdHTTP.Create(nil) do
	begin
		cnt := 0;

		repeat
			if cnt > 0 then Sleep(2000);

			if SMSC_POST then
			begin
				par := TStringStream.Create(arg);
				Request.ContentType := 'application/x-www-form-urlencoded';
				s := Post(aurl, par);
				par.Destroy;
			end
			else
				s := Get(aurl + '?' + arg);

			Inc(cnt);
		until (s <> '') or (cnt = 3);

		if s = '' then
		begin
			if SMSC_DEBUG then
				_print_debug('������ ������ ������: ' + aurl + '?' + arg);

			s := ','; // ��������� �����
		end;

		Destroy;
	end;

	cnt := 1;
	repeat
		SetLength(Result, cnt);
		SplitString(s, ',', Result[cnt - 1], s);
        Inc(cnt);
	until (s = '');

end;

// ����������� ��������� � http-�������

function SMSC._urlencode(str: String): String;
begin
	Result := TIdURI.ParamsEncode(str);
end;

// ����� ���������� ����������

procedure SMSC._print_debug(str: String);
begin
	with Application do MessageBox(PAnsiChar(str), '');
end;

function SMSC._ifs(cond: Boolean; val1: String; val2: String): String;
begin
	if cond then
    	Result := val1
    else
    	Result := val2;
end;

end.

// Examples:
// var
// sms: SMSC;
// ret: TStringDynArray;
// balance: String;
// begin
// sms := SMSC.Create;
// ret := sms.send_sms('79999999999', '��� ������: 123', 1);
// ret := sms.send_sms('79999999999', 'http://smsc.ru'#13#10 + 'SMSC.RU', 0, '', 0, 0, '', 'maxsms=3');
// ret := sms.send_sms('79999999999', '0605040B8423F0DC0601AE02056A0045C60C037761702E736D73632E72752F0001037761702E736D73632E7275000101', 0, '', 0, 5);
// ret := sms.send_sms('79999999999', '', 0, '', 0, 3);
// ret := sms.get_sms_cost('79999999999', '�� ������� ����������������!');
// sms.send_sms_mail('79999999999', '��� ������: 123', 0, '0101121000', 0, 1);
// ret := sms.get_status(12345, '79999999999');
// balance := sms.get_balance;
// sms.Destroy;
// end;

