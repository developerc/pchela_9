unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, Grids, DBGrids, DB, ADODB, ScktComp, ExtCtrls,
  StdCtrls, Menus, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    ImageList1: TImageList;
    ADOConnection1: TADOConnection;
    ADOCommand1: TADOCommand;
    ADODataSet1: TADODataSet;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOQuery1zakaz: TIntegerField;
    ADOQuery1telefon: TStringField;
    ADOQuery1kode: TStringField;
    ADOQuery1dat: TDateField;
    ADOQuery1tim: TTimeField;
    ADOQuery1adres: TStringField;
    ADOQuery1car: TIntegerField;
    ADOQuery1beg: TTimeField;
    ADOQuery1en: TTimeField;
    ADOQuery1place_end: TStringField;
    ADOQuery1cost: TIntegerField;
    ADOQuery1priznak: TStringField;
    DBGrid2: TDBGrid;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    ADOQuery2num: TAutoIncField;
    ADOQuery2telefon: TStringField;
    ADOQuery2kode: TStringField;
    ADOQuery2dat: TDateField;
    ADOQuery2tim: TTimeField;
    ADOQuery2adres: TStringField;
    ADOQuery2car: TIntegerField;
    ADOQuery2beg: TTimeField;
    ADOQuery2en: TTimeField;
    ADOQuery2cost: TIntegerField;
    ADOQuery2priznak: TStringField;
    ADOQuery2zakaz: TIntegerField;
    ClientSocket1: TClientSocket;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    TabSheet4: TTabSheet;
    Log: TMemo;
    GroupBox1: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    ADOQuery3: TADOQuery;
    DataSource3: TDataSource;
    DBGrid3: TDBGrid;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    PopupMenu3: TPopupMenu;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    ADOQuery3num: TIntegerField;
    ADOQuery3car: TIntegerField;
    ADOQuery3state: TIntegerField;
    ADOQuery1predvar: TStringField;
    ADOQuery4: TADOQuery;
    DataSource4: TDataSource;
    DBGrid4: TDBGrid;
    ADOQuery4num: TIntegerField;
    ADOQuery4begin_date: TDateField;
    ADOQuery4begin_time: TTimeField;
    ADOQuery4end_date: TDateField;
    ADOQuery4end_time: TTimeField;
    ADOQuery4summa: TIntegerField;
    ADOQuery4week: TIntegerField;
    ADOQuery1working: TIntegerField;
    ADOQuery5: TADOQuery;
    DataSource5: TDataSource;
    DBGrid5: TDBGrid;
    ADOQuery5num: TIntegerField;
    ADOQuery5day: TIntegerField;
    ADOQuery5week: TIntegerField;
    ADOQuery5working: TIntegerField;
    PopupMenu4: TPopupMenu;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    Edit1: TEdit;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    PopupMenu5: TPopupMenu;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    PopupMenu6: TPopupMenu;
    N21: TMenuItem;
    N22: TMenuItem;
    Timer2: TTimer;
    PopupMenu7: TPopupMenu;
    N23: TMenuItem;
    ADOStoredProc1: TADOStoredProc;
    Label1: TLabel;
    Label2: TLabel;
    ADOStoredProc2: TADOStoredProc;
    ADOStoredProc3: TADOStoredProc;
    ADOStoredProc4: TADOStoredProc;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    StringGrid1: TStringGrid;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    PopupMenu8: TPopupMenu;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label3: TLabel;
    Label18: TLabel;
    N51: TMenuItem;
    Button1: TButton;
    N35: TMenuItem;
    N36: TMenuItem;
    IdHTTP1: TIdHTTP;
    Memo1: TMemo;
    Memo2: TMemo;
    Button2: TButton;
    MenuSMS: TMenuItem;
    SMS_to_driver: TMenuItem;
    ADOQuery4telef: TStringField;
    ADOQuery1uvedomlen: TIntegerField;
    Timer3: TTimer;
    SMSOfficeGate1: TMenuItem;
    ClientSocket2: TClientSocket;
    ADOQuery1vip: TIntegerField;
    ClientSocket3: TClientSocket;
    RadioGroup1: TRadioGroup;
    N37: TMenuItem;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    N38: TMenuItem;
    CheckBox1: TCheckBox;
    ServerSocket1: TServerSocket;
    procedure FormCreate(Sender: TObject);
    procedure ClientSocket1Connecting(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket1Connect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket1Disconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket1Error(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure FormShow(Sender: TObject);
    procedure LabeledEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure N4Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure N3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure LabeledEdit4KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N24Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure N33Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure N39Click(Sender: TObject);
    procedure N40Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure N43Click(Sender: TObject);
    procedure N44Click(Sender: TObject);
    procedure N45Click(Sender: TObject);
    procedure N46Click(Sender: TObject);
    procedure N47Click(Sender: TObject);
    procedure N48Click(Sender: TObject);
    procedure N49Click(Sender: TObject);
    procedure N50Click(Sender: TObject);
    procedure StringGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure N51Click(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure N52Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button2Click(Sender: TObject);
    procedure MenuSMSClick(Sender: TObject);
    procedure SMS_to_driverClick(Sender: TObject);
    procedure AWCapiErrorMessage(Sender: TObject; number: Word;
      const msg: String);
    procedure AWCapiConnected(Sender: TObject);
    procedure AWCapiDisconnected(Sender: TObject; const Reason: String;
      PLCI: Cardinal);
    procedure Timer3Timer(Sender: TObject);
    procedure SMSOfficeGate1Click(Sender: TObject);
    procedure ClientSocket2Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocket2Error(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ClientSocket3Connecting(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket3Connect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket3Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure Label13Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure Label17Click(Sender: TObject);
    procedure Label20Click(Sender: TObject);
    procedure Label13MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label14MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label15MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label16MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label17MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label20MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure StringGrid1Enter(Sender: TObject);
    procedure StringGrid1Exit(Sender: TObject);
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
  private
    { Private declarations }
    procedure DyrkamNet;
    procedure DyrkamNet2(DyrNetStr : integer);
    procedure OtrabStoimostBee(NumF : integer);
    procedure PerestavCarStrGrid(NewRowStrGrd : integer);
    procedure ObnovStringGrig(StrGrd1 : integer);
    procedure OtrabStoimost(NumF : integer);
    procedure ObnovZvonki(flag_abon : integer);
    procedure ObnovZvonkiBee(var ZakBee, CarBee : integer; var TelBee, KodBee, AdrBee, DatBee, TimBee : string);
    procedure ObnovAbonenty(flag_priz : integer);
    procedure PerestavCar(CurNum, CurCar: integer);
    procedure MyGrid(Str:string);
    procedure CallsProcessing(CallingNumb, CalledNumb: string);
    procedure SeparateString(InComingStroke: string; Separator: char;
              var SeparateString1, SeparateString2: string);
    procedure SeparStrHttp(IncomingStroke: string; Separator: char;
              ParamStr: string);
    procedure Autorisation;
    procedure HttpSndZak(addr, ndriv, nzak, status, phone: string);
    procedure UvedGorAbon;
   // procedure UpdZakTelef(Telef, Zak : string);
    function push(c: string) : boolean;
    function pop : string;
    procedure FillCard(NumTelCard:string);
    procedure SaveInFl(TxtQuery: string);

  public
 
    { Public declarations }
  end;              

var
  Form1: TForm1;
  Str : string;
  maxQueueSize: integer;
  Queue: array of string;
  QueueSize: integer;
  count: integer;
  DateTime : TDateTime;
  n : integer=1;  //������ �������� ����������� ������ ������������ ��������
  Buf_telef : array [1..4] of AnsiString;
  Buf_kod : array [1..4] of AnsiString;
  Buf_bal : array [1..4] of AnsiString;
  Buf_adr : array [1..4] of AnsiString;
  Buf_dat : array [1..4] of AnsiString;
  Buf_tim: array [1..4] of AnsiString;
  Buf_fio : array [1..4] of AnsiString;
  Buf_sred : array [1..4] of AnsiString;
  Num : array [1..4] of integer;
  priz_value : integer;
  Priority : string;
  NumZak : integer=0;
  NumZakClick : integer=0;
  NumTelefClick : string;
  KodClick : string;
  DateClick : string;
  TimeClick : string;
  AddrClick : string;
  CarClick : string;
  CostClick : string;
  NumZakUvedGor : string;
  NumZakUved : integer=0;
  flag_zigane : integer=0;
  LastNum : integer;
  CurNum : integer;
  CurCar : integer;
  NumF : integer;
 // NewNumF : integer;
  Balans : integer;
  Poezdok : integer;
  Priz : integer;
  flag_priz : integer=0;
  flag_abon : integer=0; //���� � ������� ������ �������
  flag_predv : integer=0; //��������������� �����
  flag_car_yes : integer=1;
  Summa : integer;
  Working : integer=0;
  ZakazNum : integer;
  NumQueue : integer;
  NumCar : integer;
  CHBALYES : integer=0;
  ADDLETTERS : INTEGER=0;
  StrGrd1 : integer;
  StrGrdRow : integer;
  StrGrdCol : integer;
  StrGrdCel : integer;
  NewRowStrGrd : integer;
  StrGrdStr : string='';
  StGrClDbl : integer=0;
  StGrRwDbl : integer;
  StGrCoDbl : integer;
  Rem_Tok : string;
  LogPswSrw : string;
  RemoteHost: string;
  VipAbon : integer;
  SipPhoneSt : integer;
  ChanActive : array [1..6] of integer;
  ChanAssign : integer;
  DBGrd1Focused : boolean;
  StrngGrd1Focused : boolean;
  ArrayStrGrd3 : array[0..100,0..100,0..1] of integer; //������ ������� ����� 
  //ret: TStringDynArray;
 // Rect: TRect;
 // DLeft,DTop,DRight,DBottom: Integer;
 // PriznPoezd : string;

implementation

uses Unit2, Unit3, Unit4, MMSystem, ShellAPI, Unit5, Unit6, Unit7;

{$R *.dfm}

procedure TForm1.MyGrid(Str:string);
begin
//
DBGrid1.Columns[0].Title.Caption:='�����';
DBGrid1.Columns[0].Width:=35;
DBGrid1.Columns[0].Font.Style:=[fsBold];
//
DBGrid1.Columns[1].Title.Caption:='�������';
DBGrid1.Columns[1].Width:=79;
DBGrid1.Columns[1].Font.Style:=[fsBold];
//
DBGrid1.Columns[2].Title.Caption:='���';
DBGrid1.Columns[2].Width:=36;
DBGrid1.Columns[2].Font.Style:=[fsBold];
//
DBGrid1.Columns[3].Title.Caption:='����';
DBGrid1.Columns[3].Width:=53;
DBGrid1.Columns[3].Font.Style:=[fsBold];
//
DBGrid1.Columns[4].Title.Caption:='�����';
DBGrid1.Columns[4].Width:=41;
DBGrid1.Columns[4].Font.Style:=[fsBold];
//
DBGrid1.Columns[5].Title.Caption:='�����';
DBGrid1.Columns[5].Width:=198;
DBGrid1.Columns[5].Font.Style:=[fsBold];
//
DBGrid1.Columns[6].Title.Caption:='������';
DBGrid1.Columns[6].Width:=30;
DBGrid1.Columns[6].Font.Style:=[fsBold];
//
DBGrid1.Columns[7].Title.Caption:='�������';
DBGrid1.Columns[7].Width:=35;
DBGrid1.Columns[7].Font.Style:=[fsBold];
//
DBGrid1.Columns[8].Title.Caption:='������';
DBGrid1.Columns[8].Width:=35;
DBGrid1.Columns[8].Font.Style:=[fsBold];
//
DBGrid1.Columns[9].Title.Caption:='����� �������';
DBGrid1.Columns[9].Width:=73;
DBGrid1.Columns[9].Font.Style:=[fsBold];
//
DBGrid1.Columns[10].Title.Caption:='���������';
DBGrid1.Columns[10].Width:=30;
DBGrid1.Columns[10].Font.Style:=[fsBold];
//
DBGrid1.Columns[11].Title.Caption:='�������';
DBGrid1.Columns[11].Width:=50;
DBGrid1.Columns[11].Font.Style:=[fsBold];  
//
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
PopupMenu4.AutoPopup := False;
ADOQuery1.Active:=true;
ADOQuery2.Active:=true;
ADOQuery3.Active:=true;
ADOQuery4.Active:=true;
ADOQuery5.Active:=true;
MyGrid(Str);
//******������������� �������**************
 maxQueueSize:=StrToInt(LabeledEdit8.Text);
 SetLength(Queue, 0);
 QueueSize:=0;
 count:=0; //������� ����������� �������
//*****************************************
 with ADOCommand1 do begin       //���� �� ����� ��������
  CommandText := 'SELECT * FROM disp WHERE working = 1';
  CommandType := cmdText;
  ADODataSet1.Recordset := Execute;
end;
if ADODataSet1.RecordCount>0 then Working:=ADODataSet1.Recordset.Fields[0].Value
else
Working:=0;

//ShowMessage(IntToStr(Working));

{AWCapi.StartCapi;
if AWCapi.AppIsRegistered = false then
        StatusBar1.Panels[1].text := 'Capi OFF'
     else
      StatusBar1.Panels[1].text := 'Capi ON';}
end;

procedure TForm1.ClientSocket1Connecting(Sender: TObject;
  Socket: TCustomWinSocket);
begin
StatusBar1.Panels[0].Text:='����������...';
end;

procedure TForm1.ClientSocket1Connect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
StatusBar1.Panels[0].Text:='����������';
 ClientSocket1.Socket.SendText(Priority+'BEGIN');
end;

procedure TForm1.ClientSocket1Disconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
StatusBar1.Panels[0].Text:='������������!';
end;

procedure TForm1.ClientSocket1Error(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
begin
StatusBar1.Panels[0].Text:='������!';
end;

function TForm1.push(c: string) : boolean;
begin
 if QueueSize < maxQueueSize then
  begin
   Inc(QueueSize);
   SetLength(Queue, QueueSize);
   Queue[QueueSize-1] := c;
   push:=true;
  end
 else
  push:=false;
end;

function TForm1.pop : string;
 var a: integer;
     b: array of string;
begin
 if (Length(Queue)<>0) {AND (Length(Queue)<=maxQueueSize) AND (Length(Queue)>0)}  then
  begin
   SetLength(b,Length(Queue));
   for a:=0 to Length(Queue)-1 do b[a]:= Queue[a];
   pop:=Queue[Length(Queue)-QueueSize];
   for a:=1 to Length(b)-1 do Queue[a-1]:= b[a];
   Dec(QueueSize);
   SetLength(Queue, QueueSize);
  end
 else
  pop:='';
end;




procedure TForm1.SeparateString(InComingStroke: string; Separator: char;
              var SeparateString1, SeparateString2: string);
 var
  T: TStringList;
begin
 T:=TStringList.create;
 T.text:=stringReplace(InComingStroke,Separator,#13#10,[rfReplaceAll]);
 SeparateString1:=T[0];     //calling
 SeparateString2:=T[1];     //called
 T.Free;
end;


procedure TForm1.Timer1Timer(Sender: TObject);
 var s, CallingNumb, CalledNumb: string;
begin  //������ ����������� ������ �������
//���� �������� ����������� ������� ������ ��������� �������� ������ (������) ��
//"�����������" - pop �� �������
if NOT CheckBox1.Checked then begin
 if (LabeledEdit1.Text='') AND (LabeledEdit2.Text='')
    AND (LabeledEdit3.Text='') AND (LabeledEdit4.Text='') AND (LabeledEdit5.Text='')
    AND (LabeledEdit6.Text='') AND (LabeledEdit7.Text='')
  then
   begin
    s:=pop;
    StatusBar1.Panels[2].Text:=''; 
    if s='' then
     begin
      StatusBar1.Panels[3].Text:='������� �����.';
     end
    else
     begin
      SeparateString(s,';',CallingNumb,CalledNumb);
      FillCard(CallingNumb+';'+IntToStr(NumZak));  //������� � ��������
      StatusBar1.Panels[3].Text:='����� � ������: '+CallingNumb+' ��������������';
     end;
   end
  else
   begin
    if Length(Queue)<>0 then
     begin
      StatusBar1.Panels[1].Text:='� �������'+IntToStr(Length(Queue))+'������';
     end
    else
     StatusBar1.Panels[1].Text:='������� �����';
   end;

end;
end;

procedure TForm1.ClientSocket1Read(Sender: TObject;
  Socket: TCustomWinSocket);
    var CallingNumb, CalledNumb, s: string;
        //Bookmark : TBookmarkStr;
       // BM : TBookmark;
begin
s:=Socket.ReceiveText;
 //ShowMessage(s);
 if (s[1]+s[2]+s[3]='CMD') then begin  //���� CMD ������������ �������
   Delete(s,1,3);
   //Bookmark:=DBGrid1.DataSource.DataSet.Bookmark;
   //BM:=DBGrid1.DataSource.DataSet.GetBookmark;
   if (s[1]+s[2]+s[3]='REF') then begin  //���� ��� REFRESH
    if not DBGrd1Focused then begin
     with ADOQuery1 do begin  //����������� �� � �������
     SQL.Clear;
     SQL.Add('select zakaz,telefon,kode,dat,tim,adres,car,beg,en,place_end,cost,priznak,predvar,working,uvedomlen,vip from zakazi order by zakaz');
     Open;
     end;
    end;
    if not StrngGrd1Focused then
     ObnovStringGrig(1)
    end;
    
    if (s[1]+s[2]+s[3]='ARE') then begin   //���� ��� AREYOUREADY
     if (LabeledEdit1.Text='') and (LabeledEdit2.Text='') and (LabeledEdit3.Text='') and (LabeledEdit4.Text='') and (LabeledEdit5.Text='') and (LabeledEdit6.Text='') and (LabeledEdit7.Text='') then
     ClientSocket1.Socket.SendText(Priority+'READY')
     else
     ClientSocket1.Socket.SendText(Priority+'NOTREADY');
    end;

    if (s[1]+s[2]+s[3]='CHD') then begin   //���� ��� CHDISP
  //ShowMessage('����� ����������');
 //////////////////////////////////////////



     with ADOCommand1 do begin       //������� ������ � ������� ����������
  CommandText := 'select * from disp where working=1';
  CommandType := cmdText;
 // Parameters.ParamByName('PNUM').Value:=DBGrid5.Fields[0].AsInteger;
  ADODataSet1.Recordset := Execute;
  end;
 if (ADODataSet1.RecordCount>0) then  begin
 //ShowMessage('���� ������� ���������');
 Working:=ADODataSet1.Recordset.Fields[0].Value;
 ShowMessage('������� ��������� '+IntToStr(Working));
 end;
///////////////////////////////////////////////
  end;
 end;
 {
 if (s[1]+s[2]+s[3]='DAT') then begin    //������ �������� ������
 Delete(s,1,3);
  if push(s) then
  begin
   StatusBar1.Panels[2].Text:='� �������: '+IntToStr(Length(Queue))+' �������';
  end
 else
  begin
   StatusBar1.Panels[2].Text:='������� �����������';
   Inc(Count);
   StatusBar1.Panels[1].Text:='���������'+IntTostr(Count);
  end;
 end;
 }

end;

procedure TForm1.FormShow(Sender: TObject);
var i_init:integer;
params : TStringList;
resp : string;
begin
Application.CreateForm(TForm2, Form2);
Form2.ShowModal;
Form2.Free;
ObnovStringGrig(1);
SipPhoneSt:=0;
for i_init:=1 to 6 do
ChanActive[i_init]:=0;
//Autorisation();

if StrToInt(Priority) = 1 then CheckBox1.Checked:=false
else CheckBox1.Checked:=true;
DBGrd1Focused:=false;
StrngGrd1Focused:=false;

resp :=idHTTP1.Post(RemoteHost+'/api/' + LogPswSrw + '/dispreg',params);
params.Free;
//head:= idHTTP1.ResponseText;
if (POS('"error":"none"',resp)>0) then
StatusBar1.Panels[0].Text:='��������� �������������'
else
ShowMessage('����������� ����������!');

end;

procedure TForm1.CallsProcessing(CallingNumb, CalledNumb: string);
var AYear : Word;
    AMonth : Word;
    ADay : Word;Minute : Word;
    ASecond : Word;
    AHour : Word;
    AMinute : Word;
    AMillisecond : Word;
begin
   DateTime:=Now;
   DecodeDate(DateTime,AYear,AMonth,ADay);
   DecodeTime(DateTime,AHour,AMinute,ASecond,AMillisecond);
   if (AYear>0) and (AYear<9999) and (AMonth>=1) and (AMonth<=12) and (AHour>=0) and (AHour<=24) and (AMinute>=0) and (AMinute<=60) and (ASecond>=0) and (ASecond<=60) and (AMillisecond>=0) and (AMillisecond<=60) then begin
    //������ �� ������, ���� ����� ���������
   end
   else   begin
   DateTime:=Now; //��� ��� ���������� ����� ���� ����
   DecodeDate(DateTime,AYear,AMonth,ADay);
   DecodeTime(DateTime,AHour,AMinute,ASecond,AMillisecond);
   end;
 //  ShowMessage(DateTimeToStr(DateTime));
 Buf_telef[n]:='';
 Buf_kod[n]:='';
 Buf_bal[n]:='';
 Buf_adr[n]:='';
 Buf_dat[n]:='';
 Buf_tim[n]:='';
 Buf_fio[n]:='';   //����� ��� �������
 Buf_sred[n]:='';  //����� ��� ������� �����

 with ADOCommand1 do begin       //���� �� ����� ������� � ������� ���������
  CommandText := 'SELECT * FROM abonenty ' +
    'WHERE telefon = :PTELEFON OR telefon2 = :PTELEFON2';
  CommandType := cmdText;
  Parameters.ParamByName('PTELEFON').Value := CallingNumb;
  Parameters.ParamByName('PTELEFON2').Value := CallingNumb;
  ADODataSet1.Recordset := Execute;
end;

if ADODataSet1.RecordCount>0 then begin
ADODataSet1.Recordset.MoveFirst;  //������������ �� ����������
      ADOConnection1.BeginTrans;
  if Priority = '1' then begin    //���� ��� ��������� � 1 �����������
  with ADOCommand1 do begin       //���������� ������� ���� �������
  CommandText := 'INSERT INTO zvonki ' +
    '(TELEFON,KODE,DAT,TIM,ADRES) ' +
    'VALUES (:PTELEFON,:PKODE,:PDAT,:PTIM,:PADRES)';
  CommandType := cmdText;
  Parameters.ParamByName('PTELEFON').Value:=CallingNumb;
  Parameters.ParamByName('PKODE').Value:=ADODataSet1.Recordset.Fields[2].Value;
  Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',DateTime);
  Parameters.ParamByName('PTIM').Value:=FormatDateTime('hh:mm',DateTime);
  Parameters.ParamByName('PADRES').Value:=ADODataSet1.Recordset.Fields[3].Value;
  Execute;
  end;
  end;
      ADOConnection1.CommitTrans;
   if ADODataSet1.Recordset.Fields[7].Value=NULL then Buf_bal[n]:='0'
   else
  Buf_bal[n]:=IntToStr(ADODataSet1.Recordset.Fields[7].Value);
  if ADODataSet1.Recordset.Fields[3].Value=NULL then Buf_adr[n]:=''
   else
  Buf_adr[n]:=ADODataSet1.Recordset.Fields[3].Value;
   if ADODataSet1.Recordset.Fields[11].Value=NULL then Buf_fio[n]:=''
   else
  Buf_fio[n]:= ADODataSet1.Recordset.Fields[11].Value;
  if ADODataSet1.Recordset.Fields[2].Value=NULL then Buf_kod[n]:=''
   else
  Buf_kod[n]:= ADODataSet1.Recordset.Fields[2].Value;
  if (ADODataSet1.Recordset.Fields[110].Value=NULL) OR (ADODataSet1.Recordset.Fields[110].Value=0) then VipAbon:=0
   else
  VipAbon:= ADODataSet1.Recordset.Fields[110].Value;



end
else begin
  if Priority = '1' then begin    //���� ��� ��������� � 1 �����������
  with ADOCommand1 do begin       //���������� ������� ���� �� �������
  CommandText := 'INSERT INTO zvonki ' +
    '(TELEFON,DAT,TIM) ' +
    'VALUES (:PTELEFON,:PDAT,:PTIM)';
  CommandType := cmdText;
  Parameters.ParamByName('PTELEFON').Value:=CallingNumb;
  Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',DateTime);
  Parameters.ParamByName('PTIM').Value:=FormatDateTime('hh:mm',DateTime);
  Execute;
  end;
  end;
end;
 DBGrid2.DataSource.DataSet.Last; //������� ��������� �� �����
 Num[n]:=DBGrid2.Fields[0].AsInteger;
// sHOWmESSAGE(Buf_telef[n]);
//--------------------------------------------------------------------
{ if NOT CheckBox1.Checked then begin
 Buf_telef[n]:=CallingNumb;
// if ADODataSet1.Recordset.Fields[2].Value <>NULL then
 //Buf_kod[n]:=ADODataSet1.Recordset.Fields[2].Value;


 Buf_dat[n]:=FormatDateTime('dd.mm.yy',DateTime);
 Buf_tim[n]:=FormatDateTime('hh:mm',DateTime);
  if (Length(Buf_telef[n])>0) then begin //���� ����� �����������, ��������� ��������
 LabeledEdit1.Text:='';
 LabeledEdit2.Text:='';
 LabeledEdit3.Text:='';
 LabeledEdit4.Text:='';
 LabeledEdit5.Text:='';
 LabeledEdit6.Text:='';
 LabeledEdit7.Text:='';
 Label2.Caption:='0';
 LabeledEdit1.Text:=Buf_telef[n];
 LabeledEdit1.EditLabel.Caption:= CalledNumb; //� �������� - �� ����� � ������
 LabeledEdit2.Text:=Buf_kod[n];
 LabeledEdit3.Text:=Buf_bal[n];
 LabeledEdit4.Text:=Buf_adr[n];
 LabeledEdit4.EditLabel.Caption:=Buf_fio[n];//� ��������-���
 LabeledEdit5.Text:=Buf_dat[n];
 LabeledEdit6.Text:=Buf_tim[n];
 Label2.Caption:=Buf_sred[n];
 if Buf_bal[n] <> '' then begin
 if StrToInt(Buf_bal[n])>=priz_value-1 then  begin
 Label1.Visible:=true;
 Label2.Visible:=true;
 end;
 end;
// LabeledEdit4.SetFocus;
 end;
 end; }
//-------------------------------------------------------------------

  with ADOQuery2 do begin  //����������� �� � �������
SQL.Clear;
SQL.Add('select num,telefon,kode,dat,tim,adres,car,beg,en,cost,priznak,zakaz from zvonki order by num');
Open;
end;
 DBGrid2.DataSource.DataSet.Last;//���������� ��������� � ����� �� �����
 Num[n]:=DBGrid2.Fields[0].AsInteger;
 if Priority = '1' then NumZak:=Num[n] else NumZak:=0;
end;



procedure TForm1.LabeledEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin   //������� �� ���� ������
case Key of
VK_RETURN :  begin
//ShowMessage(IntToStr(NumZak));
if LabeledEdit3.Text='' then LabeledEdit3.Text:='0';
              if LabeledEdit2.Text<>'' then begin  //���� �������� �������
 with ADOCommand1 do begin       //���� �� ������� � ����� ����� � ������� �������
  CommandText := 'SELECT * FROM zakazi ' +
    'WHERE kode = :PKODE';
  CommandType := cmdText;
  Parameters.ParamByName('PKODE').Value := LabeledEdit2.Text;
  ADODataSet1.Recordset := Execute;
end;
if ADODataSet1.RecordCount>0 then begin  //���� �� ������ �� ���
ADODataSet1.Recordset.MoveFirst;
if (ADODataSet1.Recordset.Fields[11].Value = '��������') and (StrToInt(LabeledEdit3.Text) >= priz_value) then begin
flag_zigane:=1;
ShowMessage('���� ������� ��� ���� �� ��������!');
end;
end;
//end;
 //----------------------
 if (NumZak>0) and (LabeledEdit7.Text='') then begin // ���� ����� ������ ������������� � ��� ������

 with ADOCommand1 do begin       //���������� ������� ���� ��� ������
  CommandText := 'INSERT INTO zakazi ' +
    '(ZAKAZ,TELEFON,KODE,DAT,TIM,ADRES,PRIZNAK,WORKING) ' +
    'VALUES (:PZAKAZ,:PTELEFON,:PKODE,:PDATE,:PTIME,:PADRES,:PPRIZNAK,:PWORKING)';
  CommandType := cmdText;
  Parameters.ParamByName('PZAKAZ').Value := NumZak;
  Parameters.ParamByName('PTELEFON').Value:=LabeledEdit1.Text;
  Parameters.ParamByName('PKODE').Value:=LabeledEdit2.Text;
  Parameters.ParamByName('PDATE').Value:=FormatDateTime('yyyy-mm-dd',StrToDate(LabeledEdit5.Text));
  Parameters.ParamByName('PTIME').Value:=LabeledEdit6.Text;
  Parameters.ParamByName('PADRES').Value:=LabeledEdit4.Text;
  if (StrToInt(LabeledEdit3.Text) >= priz_value-1) and (flag_zigane<1)  then  begin
  Parameters.ParamByName('PPRIZNAK').Value:='��������';
  ShowMessage('�������� �������� �������� �������!');
  PlaySound('sound6.wav',0,SND_FILENAME);
  end
   else  Parameters.ParamByName('PPRIZNAK').Value:='���������';
  Parameters.ParamByName('PWORKING').Value:=Working;
  Execute;
  end;
 end;
 //----------------------
 if (NumZak=0) and (LabeledEdit7.Text='') then begin // ���� ����� ������ ������� � ��� ������
 DBGrid1.DataSource.DataSet.First;//���������� ��������� � ����� � ������
if DBGrid1.Fields[0].AsInteger<0 then begin
NumZak:=DBGrid1.Fields[0].AsInteger-1;
end
else begin
 NumZak:=-1;
end;
 with ADOCommand1 do begin       //���������� ������� ���� ��� ������
  CommandText := 'INSERT INTO zakazi ' +
    '(ZAKAZ,TELEFON,KODE,DAT,TIM,ADRES,PRIZNAK,WORKING) ' +
    'VALUES (:PZAKAZ,:PTELEFON,:PKODE,:PDATE,:PTIME,:PADRES,:PPRIZNAK,:PWORKING)';
  CommandType := cmdText;
  Parameters.ParamByName('PZAKAZ').Value := NumZak;
  Parameters.ParamByName('PTELEFON').Value:=LabeledEdit1.Text;
  Parameters.ParamByName('PKODE').Value:=LabeledEdit2.Text;
  Parameters.ParamByName('PDATE').Value:=FormatDateTime('yyyy-mm-dd',StrToDate(LabeledEdit5.Text));
  Parameters.ParamByName('PTIME').Value:=LabeledEdit6.Text;
  Parameters.ParamByName('PADRES').Value:=LabeledEdit4.Text;
     if (StrToInt(LabeledEdit3.Text) >= priz_value-1) and (flag_zigane<1)  then  begin
     Parameters.ParamByName('PPRIZNAK').Value:='��������';
     ShowMessage('�������� �������� �������� �������!');
     PlaySound('sound6.wav',0,SND_FILENAME);
     end
   else  Parameters.ParamByName('PPRIZNAK').Value:='���������';
  Parameters.ParamByName('PWORKING').Value:=Working;
  Execute;
  end;
  end ;
  //----------------------
 if (NumZak>0) and (LabeledEdit7.Text<>'') then begin // ���� ����� ������ ������������� � ���� ������
      with ADOCommand1 do begin
      CommandText := 'SELECT * from point_queues '+
      'WHERE CAR = :PCAR';
       CommandType := cmdText;
      Parameters.ParamByName('PCAR').Value := StrToInt(LabeledEdit7.Text);
      ADODataSet1.Recordset := Execute;
      end;
      if ADODataSet1.RecordCount>0 then begin //���� ������ � �������
ADODataSet1.Recordset.MoveFirst;
//CurNum:=ADODataSet1.Recordset.Fields[0].Value; //������� ������� ����� � �������
//CurNum:=1;
CurCar:=ADODataSet1.Recordset.Fields[2].Value; //� ������� ������
 with ADOCommand1 do begin       //���������� ������� ���� � �������
  CommandText := 'INSERT INTO zakazi ' +
    '(ZAKAZ,TELEFON,KODE,DAT,TIM,ADRES,CAR,PRIZNAK,WORKING) ' +
    'VALUES (:PZAKAZ,:PTELEFON,:PKODE,:PDATE,:PTIME,:PADRES,:PCAR,:PPRIZNAK,:PWORKING)';
  CommandType := cmdText;
  Parameters.ParamByName('PZAKAZ').Value := NumZak;
  Parameters.ParamByName('PTELEFON').Value:=LabeledEdit1.Text;
  Parameters.ParamByName('PKODE').Value:=LabeledEdit2.Text;
  Parameters.ParamByName('PDATE').Value:=FormatDateTime('yyyy-mm-dd',StrToDate(LabeledEdit5.Text));
  Parameters.ParamByName('PTIME').Value:=LabeledEdit6.Text;
  Parameters.ParamByName('PADRES').Value:=LabeledEdit4.Text;
  Parameters.ParamByName('PCAR').Value:=StrToInt(LabeledEdit7.Text);
  if (StrToInt(LabeledEdit3.Text) >= priz_value-1) and (flag_zigane<1)  then  begin
  Parameters.ParamByName('PPRIZNAK').Value:='��������';
  ShowMessage('�������� �������� �������� �������!');
   PlaySound('sound6.wav',0,SND_FILENAME);
  end
   else  Parameters.ParamByName('PPRIZNAK').Value:='���������';
  Parameters.ParamByName('PWORKING').Value:=Working;
  Execute;
  end;
   if (ADODataSet1.Recordset.Fields[1].Value<>1) then begin
 // PerestavCar(CurNum,CurCar);
   with ADOCommand1 do begin
      CommandText := 'update point_queues set point_id=1, state=0, updated_at=NOW()'+
      'WHERE CAR = :PCAR';
       CommandType := cmdText;
      Parameters.ParamByName('PCAR').Value := StrToInt(LabeledEdit7.Text);
      Execute;
      end;
   end;
       end
       else begin
       ShowMessage('����� ������ ��� � �������!');
       flag_car_yes:=0;
       end;
 end;
  //----------------------
 if (NumZak=0) and (LabeledEdit7.Text<>'') then begin // ���� ����� ������ ������� � ���� ������
      with ADOCommand1 do begin
      CommandText := 'SELECT * from point_queues '+
      'WHERE CAR = :PCAR';
       CommandType := cmdText;
      Parameters.ParamByName('PCAR').Value := StrToInt(LabeledEdit7.Text);
      ADODataSet1.Recordset := Execute;
      end;
      if ADODataSet1.RecordCount>0 then begin //���� ������ � �������
ADODataSet1.Recordset.MoveFirst;
//CurNum:=ADODataSet1.Recordset.Fields[0].Value; //������� ������� ����� � �������
//CurNum:=1;
CurCar:=ADODataSet1.Recordset.Fields[2].Value; //� ������� ������

DBGrid1.DataSource.DataSet.First;//���������� ��������� � ����� � ������
if DBGrid1.Fields[0].AsInteger<0 then begin
NumZak:=DBGrid1.Fields[0].AsInteger-1;
end
else begin
 NumZak:=-1;
end;
 with ADOCommand1 do begin       //���������� ������� ���� � �������
  CommandText := 'INSERT INTO zakazi ' +
    '(ZAKAZ,TELEFON,KODE,DAT,TIM,ADRES,CAR,PRIZNAK,WORKING) ' +
    'VALUES (:PZAKAZ,:PTELEFON,:PKODE,:PDATE,:PTIME,:PADRES,:PCAR,:PPRIZNAK,:PWORKING)';
  CommandType := cmdText;
  Parameters.ParamByName('PZAKAZ').Value := NumZak;
  Parameters.ParamByName('PTELEFON').Value:=LabeledEdit1.Text;
  Parameters.ParamByName('PKODE').Value:=LabeledEdit2.Text;
  Parameters.ParamByName('PDATE').Value:=FormatDateTime('yyyy-mm-dd',StrToDate(LabeledEdit5.Text));
  Parameters.ParamByName('PTIME').Value:=LabeledEdit6.Text;
  Parameters.ParamByName('PADRES').Value:=LabeledEdit4.Text;
  Parameters.ParamByName('PCAR').Value:=LabeledEdit7.Text;
     if (StrToInt(LabeledEdit3.Text) >= priz_value-1) and (flag_zigane<1)  then  begin
     Parameters.ParamByName('PPRIZNAK').Value:='��������';
     ShowMessage('�������� �������� �������� �������!');
      PlaySound('sound6.wav',0,SND_FILENAME);
     end
   else  Parameters.ParamByName('PPRIZNAK').Value:='���������';
  Parameters.ParamByName('PWORKING').Value:=Working;
  Execute;
  end;
  if (ADODataSet1.Recordset.Fields[1].Value<>1) then
 // PerestavCar(CurNum,CurCar);
   with ADOCommand1 do begin
      CommandText := 'update point_queues set point_id=1, state=0, updated_at=NOW()'+
      'WHERE CAR = :PCAR';
       CommandType := cmdText;
      Parameters.ParamByName('PCAR').Value := StrToInt(LabeledEdit7.Text);
      Execute;
      end;
        end
       else begin
       ShowMessage('����� ������ ��� � �������!');
       flag_car_yes:=0;
       end;
 end;
                  end;
      //--------���� �������� �� �������----------------
                   if LabeledEdit2.Text='' then begin
           //  ShowMessage('�������� �� �������!');
 //----------------------
 if (NumZak>0) and (LabeledEdit7.Text='') then begin // ���� ����� ������ ������������� � ��� ������

 with ADOCommand1 do begin       //���������� ������� ���� ��� ������
  CommandText := 'INSERT INTO zakazi ' +
    '(ZAKAZ,TELEFON,DAT,TIM,ADRES,PRIZNAK,WORKING) ' +
    'VALUES (:PZAKAZ,:PTELEFON,:PDATE,:PTIME,:PADRES,:PPRIZNAK,:PWORKING)';
  CommandType := cmdText;
  Parameters.ParamByName('PZAKAZ').Value := NumZak;
  Parameters.ParamByName('PTELEFON').Value:=LabeledEdit1.Text;
 // Parameters.ParamByName('PKODE').Value:=LabeledEdit2.Text;
  Parameters.ParamByName('PDATE').Value:=FormatDateTime('yyyy-mm-dd',StrToDate(LabeledEdit5.Text));
  Parameters.ParamByName('PTIME').Value:=LabeledEdit6.Text;
  Parameters.ParamByName('PADRES').Value:=LabeledEdit4.Text;
  Parameters.ParamByName('PPRIZNAK').Value:='���������';
  Parameters.ParamByName('PWORKING').Value:=Working;
  Execute;
  end;
 end;
 //----------------------
 if (NumZak=0) and (LabeledEdit7.Text='') then begin // ���� ����� ������ ������� � ��� ������
 DBGrid1.DataSource.DataSet.First;//���������� ��������� � ����� � ������
if DBGrid1.Fields[0].AsInteger<0 then begin
NumZak:=DBGrid1.Fields[0].AsInteger-1;
end
else begin
 NumZak:=-1;
end;
 with ADOCommand1 do begin       //���������� ������� ���� ��� ������
  CommandText := 'INSERT INTO zakazi ' +
    '(ZAKAZ,TELEFON,DAT,TIM,ADRES,PRIZNAK,WORKING) ' +
    'VALUES (:PZAKAZ,:PTELEFON,:PDATE,:PTIME,:PADRES,:PPRIZNAK,:PWORKING)';
  CommandType := cmdText;
  Parameters.ParamByName('PZAKAZ').Value := NumZak;
  Parameters.ParamByName('PTELEFON').Value:=LabeledEdit1.Text;
  Parameters.ParamByName('PDATE').Value:=FormatDateTime('yyyy-mm-dd',StrToDate(LabeledEdit5.Text));
  Parameters.ParamByName('PTIME').Value:=LabeledEdit6.Text;
  Parameters.ParamByName('PADRES').Value:=LabeledEdit4.Text;
  Parameters.ParamByName('PPRIZNAK').Value:='���������';
  Parameters.ParamByName('PWORKING').Value:=Working;
  Execute;
  end;
  end ;
  //----------------------
 if (NumZak>0) and (LabeledEdit7.Text<>'') then begin // ���� ����� ������ ������������� � ���� ������
      with ADOCommand1 do begin
      CommandText := 'SELECT * from point_queues '+
      'WHERE CAR = :PCAR';
       CommandType := cmdText;
      Parameters.ParamByName('PCAR').Value := StrToInt(LabeledEdit7.Text);
      ADODataSet1.Recordset := Execute;
      end;
      if ADODataSet1.RecordCount>0 then begin //���� ������ � �������
ADODataSet1.Recordset.MoveFirst;
//CurNum:=ADODataSet1.Recordset.Fields[0].Value; //������� ������� ����� � �������
//CurNum:=1;
CurCar:=ADODataSet1.Recordset.Fields[2].Value; //� ������� ������
 with ADOCommand1 do begin       //���������� ������� ���� � �������
  CommandText := 'INSERT INTO zakazi ' +
    '(ZAKAZ,TELEFON,DAT,TIM,ADRES,CAR,PRIZNAK,WORKING) ' +
    'VALUES (:PZAKAZ,:PTELEFON,:PDATE,:PTIME,:PADRES,:PCAR,:PPRIZNAK,:PWORKING)';
  CommandType := cmdText;
  Parameters.ParamByName('PZAKAZ').Value := NumZak;
  Parameters.ParamByName('PTELEFON').Value:=LabeledEdit1.Text;
  Parameters.ParamByName('PDATE').Value:=FormatDateTime('yyyy-mm-dd',StrToDate(LabeledEdit5.Text));
  Parameters.ParamByName('PTIME').Value:=LabeledEdit6.Text;
  Parameters.ParamByName('PADRES').Value:=LabeledEdit4.Text;
  Parameters.ParamByName('PCAR').Value:=StrToInt(LabeledEdit7.Text);
  Parameters.ParamByName('PPRIZNAK').Value:='���������';
  Parameters.ParamByName('PWORKING').Value:=Working;
  Execute;
  end;
  if (ADODataSet1.Recordset.Fields[1].Value<>1) then
//  PerestavCar(CurNum,CurCar);
   with ADOCommand1 do begin
      CommandText := 'update point_queues set point_id=1, state=0, updated_at=NOW()'+
      'WHERE CAR = :PCAR';
       CommandType := cmdText;
      Parameters.ParamByName('PCAR').Value := StrToInt(LabeledEdit7.Text);
      Execute;
      end;
       end
       else begin
       ShowMessage('����� ������ ��� � �������!');
       flag_car_yes:=0;
       end;
 end;
   //----------------------
 if (NumZak=0) and (LabeledEdit7.Text<>'') then begin // ���� ����� ������ ������� � ���� ������
      with ADOCommand1 do begin
      CommandText := 'SELECT * from point_queues '+
      'WHERE CAR = :PCAR';
       CommandType := cmdText;
      Parameters.ParamByName('PCAR').Value := StrToInt(LabeledEdit7.Text);
      ADODataSet1.Recordset := Execute;
      end;
      if ADODataSet1.RecordCount>0 then begin //���� ������ � �������
ADODataSet1.Recordset.MoveFirst;
//CurNum:=ADODataSet1.Recordset.Fields[0].Value; //������� ������� ����� � �������
//CurNum:=1;
CurCar:=ADODataSet1.Recordset.Fields[2].Value; //� ������� ������

DBGrid1.DataSource.DataSet.First;//���������� ��������� � ����� � ������
if DBGrid1.Fields[0].AsInteger<0 then begin
NumZak:=DBGrid1.Fields[0].AsInteger-1;
end
else begin
 NumZak:=-1;
end;
 with ADOCommand1 do begin       //���������� ������� ���� � �������
  CommandText := 'INSERT INTO zakazi ' +
    '(ZAKAZ,TELEFON,DAT,TIM,ADRES,CAR,PRIZNAK,WORKING) ' +
    'VALUES (:PZAKAZ,:PTELEFON,:PDATE,:PTIME,:PADRES,:PCAR,:PPRIZNAK,:PWORKING)';
  CommandType := cmdText;
  Parameters.ParamByName('PZAKAZ').Value := NumZak;
  Parameters.ParamByName('PTELEFON').Value:=LabeledEdit1.Text;
  Parameters.ParamByName('PDATE').Value:=FormatDateTime('yyyy-mm-dd',StrToDate(LabeledEdit5.Text));
  Parameters.ParamByName('PTIME').Value:=LabeledEdit6.Text;
  Parameters.ParamByName('PADRES').Value:=LabeledEdit4.Text;
  Parameters.ParamByName('PCAR').Value:=LabeledEdit7.Text;
  Parameters.ParamByName('PPRIZNAK').Value:='���������';
  Parameters.ParamByName('PWORKING').Value:=Working;
  Execute;
  end;
  if (ADODataSet1.Recordset.Fields[1].Value<>1) then
//  PerestavCar(CurNum,CurCar);
   with ADOCommand1 do begin
      CommandText := 'update point_queues set point_id=1, state=0, updated_at=NOW()'+
      'WHERE CAR = :PCAR';
       CommandType := cmdText;
      Parameters.ParamByName('PCAR').Value := StrToInt(LabeledEdit7.Text);
      Execute;
      end;
        end
       else begin
       ShowMessage('����� ������ ��� � �������!');
       flag_car_yes:=0;
       end;
 end;
                    end;

//������������ VIP ��������
// ShowMessage('VipAbon = ' + IntToStr(VipAbon));
if VipAbon=1 then begin
 with ADOCommand1 do begin       //�������� ���� VIP
  CommandText := 'update zakazi set vip=:PVIP where zakaz=:PZAKAZ ';
  CommandType := cmdText;
  Parameters.ParamByName('PVIP').Value := 1;
  Parameters.ParamByName('PZAKAZ').Value := NumZak;
  Execute;
  end;
end;

   with ADOQuery1 do begin  //����������� �� � �������
   SQL.Clear;
   SQL.Add('select zakaz,telefon,kode,dat,tim,adres,car,beg,en,place_end,cost,priznak,predvar,working,uvedomlen,vip from zakazi order by zakaz');
   Open;
   end;
   with ADOQuery3 do begin  //����������� ������� ����� � �������
   SQL.Clear;
   SQL.Add('select * from cqueue order by num');
   Open;
   end;
NumZak:=0;
 flag_zigane:=0;
 LabeledEdit1.SetFocus;

 {
 //�������� ����� �� HTTP
 if  (LabeledEdit7.Text = '35') or (LabeledEdit7.Text = '48') or (LabeledEdit7.Text = '31') or (LabeledEdit7.Text = '23') or (LabeledEdit7.Text = '81') or (LabeledEdit7.Text = '94') or (LabeledEdit7.Text = '5') or (LabeledEdit7.Text = '4') or (LabeledEdit7.Text = '9')  then
 HttpSndZak(LabeledEdit4.Text, LabeledEdit7.Text, IntToStr(NumZak), '���������', LabeledEdit1.Text);
}

  if (flag_car_yes=1) then begin
 LabeledEdit1.Text:='';
 LabeledEdit1.EditLabel.Caption:='�������';
 LabeledEdit2.Text:='';
 LabeledEdit3.Text:='';
 LabeledEdit4.Text:='';
 LabeledEdit4.EditLabel.Caption:='�����';
 LabeledEdit5.Text:='';
 LabeledEdit6.Text:='';
 LabeledEdit7.Text:='';
 //ClientSocket1.Socket.SendText(Priority+'READY');
 //ClientSocket1.Socket.SendText(Priority+'REFRESH');
 idHTTP1.Get(RemoteHost+'/api/' + LogPswSrw + '/reforders');
 Label1.Visible:=false;
 Label2.Visible:=false;
 end;
 flag_car_yes:=1;
 VipAbon:=0;
end;
VK_ESCAPE : begin
 LabeledEdit1.Text:='';
 LabeledEdit1.EditLabel.Caption:='�������';
 LabeledEdit2.Text:='';
 LabeledEdit3.Text:='';
 LabeledEdit4.Text:='';
 LabeledEdit4.EditLabel.Caption:='�����';
 LabeledEdit5.Text:='';
 LabeledEdit6.Text:='';
 LabeledEdit7.Text:='';
 NumZak:=0;
 LabeledEdit1.SetFocus;
// ClientSocket1.Socket.SendText(Priority+'READY');
 Label1.Visible:=false;
 Label2.Visible:=false;
 end;
end;

end;

procedure TForm1.LabeledEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin  // ������� � ���� �����
case Key of  //������� �� ���� "�����"
VK_RETURN : begin
LabeledEdit6.Text:=FormatDateTime('hh:mm',Now);
LabeledEdit7.SetFocus;
end;
VK_ESCAPE : begin
 LabeledEdit1.Text:='';
 LabeledEdit1.EditLabel.Caption:='�������';
 LabeledEdit2.Text:='';
 LabeledEdit3.Text:='';
 LabeledEdit4.Text:='';
 LabeledEdit4.EditLabel.Caption:='�����';
 LabeledEdit5.Text:='';
 LabeledEdit6.Text:='';
 LabeledEdit7.Text:='';
 NumZak:=0;
 ClientSocket1.Socket.SendText(Priority+'READY');
 Label1.Visible:=false;
 Label2.Visible:=false;
end;
end;
end;

procedure TForm1.LabeledEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case Key of  //������� �� ���� "����"
VK_RETURN : begin
LabeledEdit5.Text:=FormatDateTime('dd.mm.yy',Now);
LabeledEdit6.Text:=FormatDateTime('hh:mm',Now);
LabeledEdit7.SetFocus;
end;
VK_ESCAPE : begin
 LabeledEdit1.Text:='';
 LabeledEdit1.EditLabel.Caption:='�������';
 LabeledEdit2.Text:='';
 LabeledEdit3.Text:='';
 LabeledEdit4.Text:='';
 LabeledEdit4.EditLabel.Caption:='�����';
 LabeledEdit5.Text:='';
 LabeledEdit6.Text:='';
 LabeledEdit7.Text:='';
 NumZak:=0;
 ClientSocket1.Socket.SendText(Priority+'READY');
 Label1.Visible:=false;
 Label2.Visible:=false;
end;
end;
end;

procedure TForm1.LabeledEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case Key of  //������� �� ���� "�����"
VK_RETURN : begin
LabeledEdit5.Text:=FormatDateTime('dd.mm.yy',Now);
LabeledEdit6.Text:=FormatDateTime('hh:mm',Now);
LabeledEdit7.SetFocus;
end;
VK_ESCAPE : begin
 LabeledEdit1.Text:='';
 LabeledEdit1.EditLabel.Caption:='�������';
 LabeledEdit2.Text:='';
 LabeledEdit3.Text:='';
 LabeledEdit4.Text:='';
 LabeledEdit4.EditLabel.Caption:='�����';
 LabeledEdit5.Text:='';
 LabeledEdit6.Text:='';
 LabeledEdit7.Text:='';
 NumZak:=0;
 ClientSocket1.Socket.SendText(Priority+'READY');
 Label1.Visible:=false;
 Label2.Visible:=false;
end;
end;
end;

procedure TForm1.LabeledEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case Key of  //������� �� ���� "������"
VK_RETURN : begin
LabeledEdit4.SetFocus;
end;
VK_ESCAPE : begin
 LabeledEdit1.Text:='';
 LabeledEdit1.EditLabel.Caption:='�������';
 LabeledEdit2.Text:='';
 LabeledEdit3.Text:='';
 LabeledEdit4.Text:='';
 LabeledEdit4.EditLabel.Caption:='�����';
 LabeledEdit5.Text:='';
 LabeledEdit6.Text:='';
 LabeledEdit7.Text:='';
 NumZak:=0;
 ClientSocket1.Socket.SendText(Priority+'READY');
 Label1.Visible:=false;
 Label2.Visible:=false;
end;
end;
end;

procedure TForm1.LabeledEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case Key of  //������� �� ���� "���"
VK_RETURN : begin
 with ADOCommand1 do begin       //���� �� ����� ��� � ������� ���������
  CommandText := 'SELECT * FROM abonenty ' +
    'WHERE kode = :PKODE';
  CommandType := cmdText;
  Parameters.ParamByName('PKODE').Value := LabeledEdit2.Text;
//  Parameters.ParamByName('PTELEFON2').Value := CallingNumb;
  ADODataSet1.Recordset := Execute;
end;

if (ADODataSet1.RecordCount>0)  then begin
ADODataSet1.Recordset.MoveFirst;  //������������ �� ����������
if  ADODataSet1.Recordset.Fields[7].Value = NULL then
  LabeledEdit3.Text:=''
  else
  begin  //��������� ���� ������ � ������� ���� ���� �������
   LabeledEdit3.Text:=IntToStr(ADODataSet1.Recordset.Fields[7].Value);
   if ADODataSet1.Recordset.Fields[7].Value>=priz_value-1 then  begin
   Label1.Visible:=true;
   Label2.Visible:=true;
    with ADOStoredProc2 do
    begin
    //ProcedureName:='sredsumkod';
    Parameters.ParamByName('kod').Value:=LabeledEdit2.Text ;
    ExecProc;
    Label2.Caption:=IntToStr(Parameters.ParamByName('srd').Value);
    end;
   end;

  end;
if  ADODataSet1.Recordset.Fields[11].Value = NULL then
   LabeledEdit4.EditLabel.Caption:=''
   else
   LabeledEdit4.EditLabel.Caption:= ADODataSet1.Recordset.Fields[11].Value;
end
else begin
LabeledEdit3.Text:='';
LabeledEdit4.EditLabel.Caption:='�����';
end;
LabeledEdit4.SetFocus;
end;
VK_ESCAPE : begin
 LabeledEdit1.Text:='';
 LabeledEdit1.EditLabel.Caption:='�������';
 LabeledEdit2.Text:='';
 LabeledEdit3.Text:='';
 LabeledEdit4.Text:='';
 LabeledEdit4.EditLabel.Caption:='�����';
 LabeledEdit5.Text:='';
 LabeledEdit6.Text:='';
 LabeledEdit7.Text:='';
 NumZak:=0;
 Label1.Visible:=false;
 Label2.Visible:=false;
// ClientSocket1.Socket.SendText(Priority+'READY');
end;
end;
end;

procedure TForm1.LabeledEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var i : integer;
      s, CallingNumb,NmrZakLab : string;
begin
case Key of  //������� �� ���� "�������"
VK_RETURN : begin
LabeledEdit2.SetFocus;
end;
VK_ESCAPE : begin
 LabeledEdit1.Text:='';
 LabeledEdit1.EditLabel.Caption:='�������';
 LabeledEdit2.Text:='';
 LabeledEdit3.Text:='';
 LabeledEdit4.Text:='';
 LabeledEdit4.EditLabel.Caption:='�����';
 LabeledEdit5.Text:='';
 LabeledEdit6.Text:='';
 LabeledEdit7.Text:='';
 NumZak:=0;
ClientSocket1.Socket.SendText(Priority+'READY');
 Label1.Visible:=false;
 Label2.Visible:=false;
  ClientSocket3.Socket.SendText('HNG;'+IntToStr(ChanAssign));
   case ChanAssign of
   1: begin Label13.Color:=clActiveBorder; Label13.Caption:='�����1' end;
   2: begin Label14.Color:=clActiveBorder; Label14.Caption:='�����2' end;
   3: begin Label15.Color:=clActiveBorder; Label15.Caption:='�����3' end;
   4: begin Label16.Color:=clActiveBorder; Label16.Caption:='�����4' end;
   5: begin Label17.Color:=clActiveBorder; Label17.Caption:='�����5' end;
   6: begin Label20.Color:=clActiveBorder; Label20.Caption:='�����6' end;
   end;
  ChanActive[ChanAssign]:=0;
  ChanAssign:=0;
  VipAbon:=0;
end;

//----------------------------------------------
VK_F1 : begin
// if SipPhoneSt = 0 then begin
 if LabeledEdit1.Text <> '' then begin
 case RadioGroup1.ItemIndex of
 0 : ClientSocket3.Socket.SendText('CAL;3'+LabeledEdit1.Text);
 1 : ClientSocket3.Socket.SendText('CAL;4'+LabeledEdit1.Text);
 2 : ClientSocket3.Socket.SendText('CAL;5'+LabeledEdit1.Text);
 3 : ClientSocket3.Socket.SendText('CAL;6'+LabeledEdit1.Text);
 4 : ClientSocket3.Socket.SendText('CAL;7'+LabeledEdit1.Text);
 5 : ClientSocket3.Socket.SendText('CAL;8'+LabeledEdit1.Text);
 end;
// SipPhoneSt:=1;
//end;
 end
 else begin
// if SipPhoneSt = 2 then begin
  for i:=1 to 6 do
  if ChanActive[i] > 0 then begin
  ChanAssign:=i;
  break;
  end;
   if ChanAssign>0 then begin
   ClientSocket3.Socket.SendText('ANS;'+IntToStr(ChanAssign));
   case ChanAssign of
   1: begin Label13.Color:=clGreen; FillCard(Label13.Caption); end;
   2: begin Label14.Color:=clGreen; FillCard(Label14.Caption); end;
   3: begin Label15.Color:=clGreen; FillCard(Label15.Caption); end;
   4: begin Label16.Color:=clGreen; FillCard(Label16.Caption); end;
   5: begin Label17.Color:=clGreen; FillCard(Label17.Caption); end;
   6: begin Label20.Color:=clGreen; FillCard(Label20.Caption); end;
   end;
   end;
 end;
end;
//----------------------------------------------

VK_F4 : begin
//��������� ������� ESCAPE
if ChanAssign>0 then begin
 LabeledEdit1.Text:='';
 LabeledEdit1.EditLabel.Caption:='�������';
 LabeledEdit2.Text:='';
 LabeledEdit3.Text:='';
 LabeledEdit4.Text:='';
 LabeledEdit4.EditLabel.Caption:='�����';
 LabeledEdit5.Text:='';
 LabeledEdit6.Text:='';
 LabeledEdit7.Text:='';
 NumZak:=0;
ClientSocket1.Socket.SendText(Priority+'READY');
 Label1.Visible:=false;
 Label2.Visible:=false;
  ClientSocket3.Socket.SendText('HNG;'+IntToStr(ChanAssign));
   case ChanAssign of
   1: begin Label13.Color:=clActiveBorder; Label13.Caption:='�����1' end;
   2: begin Label14.Color:=clActiveBorder; Label14.Caption:='�����2' end;
   3: begin Label15.Color:=clActiveBorder; Label15.Caption:='�����3' end;
   4: begin Label16.Color:=clActiveBorder; Label16.Caption:='�����4' end;
   5: begin Label17.Color:=clActiveBorder; Label17.Caption:='�����5' end;
   6: begin Label20.Color:=clActiveBorder; Label20.Caption:='�����6' end;
   end;
  ChanActive[ChanAssign]:=0;
  ChanAssign:=0;
  VipAbon:=0;
end;  
//����� ���������� ������� ESCAPE
//���������� ������� F1
  for i:=1 to 6 do
  if ChanActive[i] > 0 then begin
  ChanAssign:=i;
  break;
  end;
   if ChanAssign>0 then begin
   ClientSocket3.Socket.SendText('ANS;'+IntToStr(ChanAssign));
   case ChanAssign of
   1: begin Label13.Color:=clGreen; FillCard(Label13.Caption); end;
   2: begin Label14.Color:=clGreen; FillCard(Label14.Caption); end;
   3: begin Label15.Color:=clGreen; FillCard(Label15.Caption); end;
   4: begin Label16.Color:=clGreen; FillCard(Label16.Caption); end;
   5: begin Label17.Color:=clGreen; FillCard(Label17.Caption); end;
   6: begin Label20.Color:=clGreen; FillCard(Label20.Caption); end;
   end;
   end;
end;
//---------------------������ ������� F5---------------------
VK_F5 : begin
 if (LabeledEdit1.Text='') AND (LabeledEdit2.Text='')
    AND (LabeledEdit3.Text='') AND (LabeledEdit4.Text='') AND (LabeledEdit5.Text='')
    AND (LabeledEdit6.Text='') AND (LabeledEdit7.Text='')
  then
   begin
    s:=label13.Caption;
    if (s='') or (POS('�����',s)>0) or (POS('�����',s)>0) then
    else
     begin
      SeparateString(s,';',CallingNumb,NmrZakLab);
      FillCard(CallingNumb+';'+NmrZakLab);  //������� � ��������
     end;
   end;
end;
//---------------------����� ������� F5----------------------
//---------------------������ ������� F6---------------------
VK_F6 : begin
 if (LabeledEdit1.Text='') AND (LabeledEdit2.Text='')
    AND (LabeledEdit3.Text='') AND (LabeledEdit4.Text='') AND (LabeledEdit5.Text='')
    AND (LabeledEdit6.Text='') AND (LabeledEdit7.Text='')
  then
   begin
    s:=label14.Caption;
    if (s='') or (POS('�����',s)>0) or (POS('�����',s)>0) then
    else
     begin
      SeparateString(s,';',CallingNumb,NmrZakLab);
      FillCard(CallingNumb+';'+NmrZakLab);  //������� � ��������
     end;
   end;
end;
//---------------------����� ������� F6----------------------
//---------------------������ ������� F7---------------------
VK_F7 : begin
 if (LabeledEdit1.Text='') AND (LabeledEdit2.Text='')
    AND (LabeledEdit3.Text='') AND (LabeledEdit4.Text='') AND (LabeledEdit5.Text='')
    AND (LabeledEdit6.Text='') AND (LabeledEdit7.Text='')
  then
   begin
    s:=label15.Caption;
    if (s='') or (POS('�����',s)>0) or (POS('�����',s)>0) then
    else
     begin
      SeparateString(s,';',CallingNumb,NmrZakLab);
      FillCard(CallingNumb+';'+NmrZakLab);  //������� � ��������
     end;
   end;
end;
//---------------------����� ������� F7----------------------
//---------------------������ ������� F8---------------------
VK_F8 : begin
 if (LabeledEdit1.Text='') AND (LabeledEdit2.Text='')
    AND (LabeledEdit3.Text='') AND (LabeledEdit4.Text='') AND (LabeledEdit5.Text='')
    AND (LabeledEdit6.Text='') AND (LabeledEdit7.Text='')
  then
   begin
    s:=label16.Caption;
    if (s='') or (POS('�����',s)>0) or (POS('�����',s)>0) then
    else
     begin
      SeparateString(s,';',CallingNumb,NmrZakLab);
      FillCard(CallingNumb+';'+NmrZakLab);  //������� � ��������
     end;
   end;
end;
//---------------------����� ������� F8----------------------
//---------------------������ ������� F9---------------------
VK_F9 : begin
 if (LabeledEdit1.Text='') AND (LabeledEdit2.Text='')
    AND (LabeledEdit3.Text='') AND (LabeledEdit4.Text='') AND (LabeledEdit5.Text='')
    AND (LabeledEdit6.Text='') AND (LabeledEdit7.Text='')
  then
   begin
    s:=label17.Caption;
    if (s='') or (POS('�����',s)>0) or (POS('�����',s)>0) then
    else
     begin
      SeparateString(s,';',CallingNumb,NmrZakLab);
      FillCard(CallingNumb+';'+NmrZakLab);  //������� � ��������
     end;
   end;
end;
//---------------------����� ������� F9----------------------
//---------------------������ ������� F10---------------------
VK_F10 : begin
 if (LabeledEdit1.Text='') AND (LabeledEdit2.Text='')
    AND (LabeledEdit3.Text='') AND (LabeledEdit4.Text='') AND (LabeledEdit5.Text='')
    AND (LabeledEdit6.Text='') AND (LabeledEdit7.Text='')
  then
   begin
    s:=label20.Caption;
    if (s='') or (POS('�����',s)>0) or (POS('�����',s)>0) then
    else
     begin
      SeparateString(s,';',CallingNumb,NmrZakLab);
      FillCard(CallingNumb+';'+NmrZakLab);  //������� � ��������
     end;
   end;
end;
//---------------------����� ������� F10----------------------
end;

end;

procedure TForm1.N1Click(Sender: TObject);
var CostPerc : real;
begin   //���� "����� ���������"
 if DBGrid1.Fields[2].AsString <> '' then begin //���� �������
 //Showmessage(IntToStr(DBGrid1.Fields[10].AsInteger));
 Dbgrid1.Fields[9].FocusControl;
 CostPerc:=DBGrid1.Fields[10].AsInteger;
 CostPerc:=0.9*CostPerc;
 //DBGrid1.Fields[10].AsInteger:=Round(CostPerc);
   if MessageDlg('���������� ����� �������� �� ' + FloatToStr(Round(CostPerc)) + ' ���?' ,mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
 {  DBGrid1.SetFocus;
   Dbgrid1.Fields[9].FocusControl;
 CostPerc:=DBGrid1.Fields[10].AsInteger;
 CostPerc:=0.9*CostPerc;
    DBGrid1.Fields[10].AsInteger:=Round(CostPerc); }
   //OtrabStoimost(NumF); 
   end;
 end else begin  //���� �� �������
  // OtrabStoimost(NumF);
   end;


//ClientSocket1.Socket.SendText(Priority+'REFRESH');
idHTTP1.Get(RemoteHost+'/api/' + LogPswSrw + '/reforders');
end;

procedure TForm1.N2Click(Sender: TObject);
begin    //���� "������� ������"
{  if MessageDlg('������� ����� '+ IntToStr(NumZakClick)+' ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin }
with ADOCommand1 do begin
  CommandText := 'DELETE FROM zakazi WHERE ZAKAZ=:PZAKAZ';
  CommandType := cmdText;
  Parameters.ParamByName('PZAKAZ').Value:=DBGrid1.Fields[0].AsInteger;
 // Parameters.ParamByName('PZAKAZ').Value:=NumZakClick;
  Execute;
  end;

  with ADOQuery1 do begin  //����������� �� � �������
SQL.Clear;
SQL.Add('select zakaz,telefon,kode,dat,tim,adres,car,beg,en,place_end,cost,priznak,predvar,working,uvedomlen,vip from zakazi order by zakaz');
Open;
end; 
//ClientSocket1.Socket.SendText(Priority+'REFRESH');
idHTTP1.Get(RemoteHost+'/api/' + LogPswSrw + '/reforders');
 // end;
end;

procedure TForm1.N9Click(Sender: TObject);
begin  //������� �� ������ ���� ������
with ADOCommand1 do begin       //��������� ���� state
  CommandText := 'UPDATE cqueue SET state=3 ' +
    'WHERE car=:PCAR';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=DBGrid3.Fields[1].AsInteger;
  Execute;
  end;
  with ADOQuery3 do begin  //����������� �� � �������
SQL.Clear;
SQL.Add('select * from cqueue order by num');
Open;
end;
end;

procedure TForm1.N8Click(Sender: TObject);
begin   //������� �� ������ ���� �� ������
with ADOCommand1 do begin       //��������� ���� state
  CommandText := 'UPDATE cqueue SET state=2 ' +
    'WHERE car=:PCAR';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=DBGrid3.Fields[1].AsInteger;
  Execute;
  end;
  with ADOQuery3 do begin  //����������� �� � �������
SQL.Clear;
SQL.Add('select * from cqueue order by num');
Open;
end;
end;

procedure TForm1.N7Click(Sender: TObject);
begin  //������� �� ������ ���� �� �����
with ADOCommand1 do begin       //��������� ���� state
  CommandText := 'UPDATE cqueue SET state=1 ' +
    'WHERE car=:PCAR';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=DBGrid3.Fields[1].AsInteger;
  Execute;
  end;
  with ADOQuery3 do begin  //����������� �� � �������
SQL.Clear;
SQL.Add('select * from cqueue order by num');
Open;
end;
end;

procedure TForm1.DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin  //������������ �������

if DBGrid3.Fields[2].AsInteger=10 then
DBGrid3.Canvas.Brush.Color:=clMoneyGreen;
if DBGrid3.Fields[2].AsInteger=9 then
DBGrid3.Canvas.Brush.Color:=clGray;
if DBGrid3.Fields[2].AsInteger=8 then
DBGrid3.Canvas.Brush.Color:=clOlive;
if DBGrid3.Fields[2].AsInteger=7 then
DBGrid3.Canvas.Brush.Color:=clSkyBlue;
if DBGrid3.Fields[2].AsInteger=6 then
DBGrid3.Canvas.Brush.Color:=clGreen;
if DBGrid3.Fields[2].AsInteger=5 then
DBGrid3.Canvas.Brush.Color:=clYellow;
if DBGrid3.Fields[2].AsInteger=4 then
DBGrid3.Canvas.Brush.Color:=clFuchsia;
if DBGrid3.Fields[2].AsInteger=3 then
DBGrid3.Canvas.Brush.Color:=clRed;
if DBGrid3.Fields[2].AsInteger=2 then
DBGrid3.Canvas.Brush.Color:=clAqua;

DBGrid3.DefaultDrawDataCell(Rect,Column.Field,State);
end;

procedure TForm1.PerestavCar(CurNum, CurCar: integer);
var NewCol : integer;
    NewRow : integer;
    LVar : OleVariant;
begin
   with ADOCommand1 do begin       //������� ����� � ������� ��������� ������
  CommandText := 'select car,row,col from cqueue where car=:PCAR';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=CurCar;
  ADODataSet1.Recordset := Execute;
  end;
StrGrdRow:=ADODataSet1.Recordset.Fields[1].Value;
StrGrdCol:=ADODataSet1.Recordset.Fields[2].Value;
   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'select COUNT(col) from cqueue where row=:PNEWROW';
   ADOCommand1.CommandType := cmdText;
   Parameters.ParamByName('PNEWROW').Value:=1;
   ADODataSet1.Recordset := Execute;
   end;
   ADODataSet1.First;
   //------------------------------------------------------------------
   LVar:=ADODataSet1.Recordset.Fields[0].Value; //�������� �� OLEVariant � STRING
 //  ShowMessage(VarToStr(LVar));
   //------------------------------------------------------------------
    if (VarToStr(LVar)<>'0') then begin
//     Col2:= StrToInt(VarToStr(LVar));
//   if (ADODataSet1.Recordset.Fields[0].Value<>NULL) then begin
// if (ADODataSet1.Recordset.Fields[0].Value<>NULL) then begin
// NewCol:=ADODataSet1.Recordset.Fields[0].Value;
   NewCol:= StrToInt(VarToStr(LVar));
 end
 else begin
 NewCol:=0;
 end;

 NewRow:=1;


   with ADOCommand1 do begin
  CommandText := 'update cqueue set col=:PCOL,row=:PROW where car=:PCAR';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=CurCar;
  Parameters.ParamByName('PROW').Value:=NewRow;
  Parameters.ParamByName('PCOL').Value:=NewCol;
  Execute;
  end;

   with ADOCommand1 do begin
  CommandText := 'update cqueue set col=col-1 where row=:PROW and col>:PCOL';
  CommandType := cmdText;
  Parameters.ParamByName('PROW').Value:=StrGrdRow;
  Parameters.ParamByName('PCOL').Value:=StrGrdCol;
  Execute;
  end;
// end
// else ShowMessage('������ �� �������!');
ObnovStringGrig(1);


end;

procedure TForm1.N4Click(Sender: TObject);
begin   //�������� ��� ���������������
 with ADOCommand1 do begin       //�������� ���� ��������������� TRUE
  CommandText := 'update zakazi set predvar=:PTRUTH where zakaz=:PZAKAZ ';
  CommandType := cmdText;
  Parameters.ParamByName('PTRUTH').Value := 'YES';
  Parameters.ParamByName('PZAKAZ').Value := DBGrid1.Fields[0].AsInteger;
  Execute;
  end;
    with ADOQuery1 do begin  //����������� �� � �������
   SQL.Clear;
   SQL.Add('select zakaz,telefon,kode,dat,tim,adres,car,beg,en,place_end,cost,priznak,predvar,working,uvedomlen,vip from zakazi order by zakaz');
   Open;
   end;
   //ClientSocket1.Socket.SendText(Priority+'REFRESH');
   idHTTP1.Get(RemoteHost+'/api/' + LogPswSrw + '/reforders');
end;

procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
//if DBGrid1.Fields[12].AsString='YES' then DBGrid1.Canvas.Font.Color:=clRed;
//DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
if DBGrid1.Fields[11].AsString='��������' then DBGrid1.Canvas.Font.Color:=clGreen;
if DBGrid1.Fields[12].AsString='YES' then DBGrid1.Canvas.Font.Color:=clRed;
if DBGrid1.Fields[15].AsInteger = 1 then  DBGrid1.Canvas.Brush.Color:=RGB($FF,$FF,$00);//clMedGray;
if DBGrid1.Fields[14].AsInteger = 1 then  DBGrid1.Canvas.Brush.Color:=RGB($e8,$e8,$e8);//clMedGray;
if DBGrid1.Fields[14].AsInteger = 2 then  DBGrid1.Canvas.Brush.Color:=RGB($99,$ff,$99);
if DBGrid1.Fields[14].AsInteger = 3 then  DBGrid1.Canvas.Brush.Color:=RGB($ff,$99,$99);
if DBGrid1.Fields[14].AsInteger = 4 then  DBGrid1.Canvas.Brush.Color:=RGB($cc,$99,$ff);
DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
end;

procedure TForm1.ObnovAbonenty(flag_priz : Integer);
begin

    with ADOCommand1 do begin       //���������� ���� dat
    CommandText := 'UPDATE abonenty SET dat=:PDAT ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',DBGrid1.Fields[3].AsDateTime);
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� tim
    CommandText := 'UPDATE abonenty SET tim=:PTIM ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PTIM').Value:=DBGrid1.Fields[4].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� cost
    CommandText := 'UPDATE abonenty SET cost=:PCOST ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    if DBGrid1.Fields[10].AsString<>'' then
    Parameters.ParamByName('PCOST').Value:=DBGrid1.Fields[10].AsInteger
    else Parameters.ParamByName('PCOST').Value:=0;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    if flag_priz=1 then begin
    with ADOCommand1 do begin       //���������� ���� balans
    CommandText := 'UPDATE abonenty SET balans=:PBALANS ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PBALANS').Value:=Balans-priz_value+1;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    end
    else begin
    with ADOCommand1 do begin       //���������� ���� balans
    CommandText := 'UPDATE abonenty SET balans=:PBALANS ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PBALANS').Value:=Balans+1;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    end;
    with ADOCommand1 do begin       //���������� ���� poezdok
    CommandText := 'UPDATE abonenty SET poezdok=:PPOEZDOK ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PPOEZDOK').Value:=Poezdok+1;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
     if flag_priz=1 then begin
    with ADOCommand1 do begin       //���������� ���� priz
    CommandText := 'UPDATE abonenty SET priz=:PPRIZ ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PPRIZ').Value:=Priz+1;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    end;
   // ShowMessage('NumF= '+IntToStr(NumF));
      with ADOCommand1 do begin
  CommandText := 'select * from abonenty where kode=:PKODE'; //�������� ������ ��� ����� ��������
  CommandType := cmdText;
  Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
  ADODataSet1.Recordset := Execute;
  end;
  if ADODataSet1.Recordset.Fields[48].Value<>NULL then begin //���������� �������� NumF
    //ShowMessage('NUMF<>NULL');
    // ShowMessage('NUMF= '+IntToStr(ADODataSet1.Recordset.Fields[48].Value));
     if ADODataSet1.Recordset.Fields[48].Value<>0 then  begin
      NumF:=ADODataSet1.Recordset.Fields[48].Value;
      //NewNumF:=NumF+1;
     // ShowMessage('NUMF= '+IntToStr(NUMF));
     end
     else begin
      NumF:=1;
     end;
   end
   else begin
    //ShowMessage('NUMF=NULL');
    NumF:=1;
    end;   //���������� �������� NumF
  // ���� ��������, ������� ��� ������ � ���������� �������� � NumF:=1;
  if flag_priz=1 then begin
   NumF:=1;
 with ADOStoredProc3 do
 begin
 //ProcedureName:='delold';
 Parameters.ParamByName('kod').Value:=DBGrid1.Fields[2].AsString;
 ExecProc;
 end;
  end;
  // // // // //
    case NumF of
    1 : begin   //��������� ���� first
    with ADOCommand1 do begin       //���������� ���� first_d
    CommandText := 'UPDATE abonenty SET first_d=:PDAT ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',DBGrid1.Fields[3].AsDateTime);
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� first_t
    CommandText := 'UPDATE abonenty SET first_t=:PTIM ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PTIM').Value:=DBGrid1.Fields[4].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� first_c
    CommandText := 'UPDATE abonenty SET first_c=:PCOST ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    if DBGrid1.Fields[10].AsString<>'' then
    Parameters.ParamByName('PCOST').Value:=DBGrid1.Fields[10].AsInteger
    else Parameters.ParamByName('PCOST').Value:=0;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� first_p
    CommandText := 'UPDATE abonenty SET first_p=:PPRIZ ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    if flag_priz=1 then
    Parameters.ParamByName('PPRIZ').Value:='��������'
    else  Parameters.ParamByName('PPRIZ').Value:='���������';
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� first_a
    CommandText := 'UPDATE abonenty SET first_a=:PADR ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PADR').Value:=DBGrid1.Fields[5].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� first_m
    CommandText := 'UPDATE abonenty SET first_m=:PMASH ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PMASH').Value:=DBGrid1.Fields[6].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
{ with ADOStoredProc4 do
 begin
 //ProcedureName:='addnew';
 Parameters.ParamByName('kod').Value:=DBGrid1.Fields[2].AsString;
 Parameters.ParamByName('dat').Value:=FormatDateTime('yyyy-mm-dd',DBGrid1.Fields[3].AsDateTime);
 Parameters.ParamByName('tim').Value:=DBGrid1.Fields[4].AsString;
 if DBGrid1.Fields[10].AsString<>'' then
 Parameters.ParamByName('cost').Value:=DBGrid1.Fields[10].AsInteger
 else Parameters.ParamByName('cost').Value:=0;
    if flag_priz=1 then
    Parameters.ParamByName('priz').Value:='��������'
    else  Parameters.ParamByName('priz').Value:='���������';
 ExecProc;
 end; }
    end;
    2 : begin
    with ADOCommand1 do begin       //���������� ���� second_d
    CommandText := 'UPDATE abonenty SET second_d=:PDAT ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',DBGrid1.Fields[3].AsDateTime);
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� second_t
    CommandText := 'UPDATE abonenty SET second_t=:PTIM ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PTIM').Value:=DBGrid1.Fields[4].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� second_c
    CommandText := 'UPDATE abonenty SET second_c=:PCOST ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    if DBGrid1.Fields[10].AsString<>'' then
    Parameters.ParamByName('PCOST').Value:=DBGrid1.Fields[10].AsInteger
    else Parameters.ParamByName('PCOST').Value:=0;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� second_p
    CommandText := 'UPDATE abonenty SET second_p=:PPRIZ ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    if flag_priz=1 then
    Parameters.ParamByName('PPRIZ').Value:='��������'
    else  Parameters.ParamByName('PPRIZ').Value:='���������';
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� second_a
    CommandText := 'UPDATE abonenty SET second_a=:PADR ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PADR').Value:=DBGrid1.Fields[5].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� second_m
    CommandText := 'UPDATE abonenty SET second_m=:PMASH ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PMASH').Value:=DBGrid1.Fields[6].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    end;
    3 : begin
    with ADOCommand1 do begin       //���������� ���� third_d
    CommandText := 'UPDATE abonenty SET third_d=:PDAT ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',DBGrid1.Fields[3].AsDateTime);
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� third_t
    CommandText := 'UPDATE abonenty SET third_t=:PTIM ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PTIM').Value:=DBGrid1.Fields[4].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� third_c
    CommandText := 'UPDATE abonenty SET third_c=:PCOST ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    if DBGrid1.Fields[10].AsString<>'' then
    Parameters.ParamByName('PCOST').Value:=DBGrid1.Fields[10].AsInteger
    else Parameters.ParamByName('PCOST').Value:=0;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� third_p
    CommandText := 'UPDATE abonenty SET third_p=:PPRIZ ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    if flag_priz=1 then
    Parameters.ParamByName('PPRIZ').Value:='��������'
    else  Parameters.ParamByName('PPRIZ').Value:='���������';
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� third_a
    CommandText := 'UPDATE abonenty SET third_a=:PADR ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PADR').Value:=DBGrid1.Fields[5].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� third_m
    CommandText := 'UPDATE abonenty SET third_m=:PMASH ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PMASH').Value:=DBGrid1.Fields[6].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    end;
    4 : begin
    with ADOCommand1 do begin       //���������� ���� fourth_d
    CommandText := 'UPDATE abonenty SET fourth_d=:PDAT ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',DBGrid1.Fields[3].AsDateTime);
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� fourth_t
    CommandText := 'UPDATE abonenty SET fourth_t=:PTIM ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PTIM').Value:=DBGrid1.Fields[4].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� fourth_c
    CommandText := 'UPDATE abonenty SET fourth_c=:PCOST ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    if DBGrid1.Fields[10].AsString<>'' then
    Parameters.ParamByName('PCOST').Value:=DBGrid1.Fields[10].AsInteger
    else Parameters.ParamByName('PCOST').Value:=0;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� fourth_p
    CommandText := 'UPDATE abonenty SET fourth_p=:PPRIZ ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    if flag_priz=1 then
    Parameters.ParamByName('PPRIZ').Value:='��������'
    else  Parameters.ParamByName('PPRIZ').Value:='���������';
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� fourth_a
    CommandText := 'UPDATE abonenty SET fourth_a=:PADR ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PADR').Value:=DBGrid1.Fields[5].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� fourth_m
    CommandText := 'UPDATE abonenty SET fourth_m=:PMASH ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PMASH').Value:=DBGrid1.Fields[6].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    end;
    5 : begin
    with ADOCommand1 do begin       //���������� ���� fifth_d
    CommandText := 'UPDATE abonenty SET fifth_d=:PDAT ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',DBGrid1.Fields[3].AsDateTime);
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� fifth_t
    CommandText := 'UPDATE abonenty SET fifth_t=:PTIM ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PTIM').Value:=DBGrid1.Fields[4].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� fifth_c
    CommandText := 'UPDATE abonenty SET fifth_c=:PCOST ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    if DBGrid1.Fields[10].AsString<>'' then
    Parameters.ParamByName('PCOST').Value:=DBGrid1.Fields[10].AsInteger
    else Parameters.ParamByName('PCOST').Value:=0;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� fifth_p
    CommandText := 'UPDATE abonenty SET fifth_p=:PPRIZ ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    if flag_priz=1 then
    Parameters.ParamByName('PPRIZ').Value:='��������'
    else  Parameters.ParamByName('PPRIZ').Value:='���������';
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� fifth_a
    CommandText := 'UPDATE abonenty SET fifth_a=:PADR ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PADR').Value:=DBGrid1.Fields[5].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� fifth_m
    CommandText := 'UPDATE abonenty SET fifth_m=:PMASH ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PMASH').Value:=DBGrid1.Fields[6].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    end;
    6 : begin
    with ADOCommand1 do begin       //���������� ���� sixth_d
    CommandText := 'UPDATE abonenty SET sixth_d=:PDAT ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',DBGrid1.Fields[3].AsDateTime);
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� sixth_t
    CommandText := 'UPDATE abonenty SET sixth_t=:PTIM ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PTIM').Value:=DBGrid1.Fields[4].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� sixth_c
    CommandText := 'UPDATE abonenty SET sixth_c=:PCOST ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    if DBGrid1.Fields[10].AsString<>'' then
    Parameters.ParamByName('PCOST').Value:=DBGrid1.Fields[10].AsInteger
    else Parameters.ParamByName('PCOST').Value:=0;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� sixth_p
    CommandText := 'UPDATE abonenty SET sixth_p=:PPRIZ ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    if flag_priz=1 then
    Parameters.ParamByName('PPRIZ').Value:='��������'
    else  Parameters.ParamByName('PPRIZ').Value:='���������';
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� sixth_a
    CommandText := 'UPDATE abonenty SET sixth_a=:PADR ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PADR').Value:=DBGrid1.Fields[5].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� sixth_m
    CommandText := 'UPDATE abonenty SET sixth_m=:PMASH ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PMASH').Value:=DBGrid1.Fields[6].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    end;
    7 : begin
    with ADOCommand1 do begin       //���������� ���� seventh_d
    CommandText := 'UPDATE abonenty SET seventh_d=:PDAT ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',DBGrid1.Fields[3].AsDateTime);
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� seventh_t
    CommandText := 'UPDATE abonenty SET seventh_t=:PTIM ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PTIM').Value:=DBGrid1.Fields[4].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� seventh_c
    CommandText := 'UPDATE abonenty SET seventh_c=:PCOST ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    if DBGrid1.Fields[10].AsString<>'' then
    Parameters.ParamByName('PCOST').Value:=DBGrid1.Fields[10].AsInteger
    else Parameters.ParamByName('PCOST').Value:=0;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� seventh_p
    CommandText := 'UPDATE abonenty SET seventh_p=:PPRIZ ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    if flag_priz=1 then
    Parameters.ParamByName('PPRIZ').Value:='��������'
    else  Parameters.ParamByName('PPRIZ').Value:='���������';
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� seventh_a
    CommandText := 'UPDATE abonenty SET seventh_a=:PADR ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PADR').Value:=DBGrid1.Fields[5].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� seventh_m
    CommandText := 'UPDATE abonenty SET seventh_m=:PMASH ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PMASH').Value:=DBGrid1.Fields[6].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    end;
    8 : begin
    with ADOCommand1 do begin       //���������� ���� eigth_d
    CommandText := 'UPDATE abonenty SET eigth_d=:PDAT ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',DBGrid1.Fields[3].AsDateTime);
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� eigth_t
    CommandText := 'UPDATE abonenty SET eigth_t=:PTIM ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PTIM').Value:=DBGrid1.Fields[4].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� eigth_c
    CommandText := 'UPDATE abonenty SET eigth_c=:PCOST ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    if DBGrid1.Fields[10].AsString<>'' then
    Parameters.ParamByName('PCOST').Value:=DBGrid1.Fields[10].AsInteger
    else Parameters.ParamByName('PCOST').Value:=0;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� eigth_p
    CommandText := 'UPDATE abonenty SET eigth_p=:PPRIZ ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    if flag_priz=1 then
    Parameters.ParamByName('PPRIZ').Value:='��������'
    else  Parameters.ParamByName('PPRIZ').Value:='���������';
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� eigth_a
    CommandText := 'UPDATE abonenty SET eigth_a=:PADR ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PADR').Value:=DBGrid1.Fields[5].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� eigth_m
    CommandText := 'UPDATE abonenty SET eigth_m=:PMASH ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PMASH').Value:=DBGrid1.Fields[6].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    end;
    9 : begin
    with ADOCommand1 do begin       //���������� ���� nineth_d
    CommandText := 'UPDATE abonenty SET nineth_d=:PDAT ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',DBGrid1.Fields[3].AsDateTime);
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� nineth_t
    CommandText := 'UPDATE abonenty SET nineth_t=:PTIM ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PTIM').Value:=DBGrid1.Fields[4].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� nineth_c
    CommandText := 'UPDATE abonenty SET nineth_c=:PCOST ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    if DBGrid1.Fields[10].AsString<>'' then
    Parameters.ParamByName('PCOST').Value:=DBGrid1.Fields[10].AsInteger
    else Parameters.ParamByName('PCOST').Value:=0;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� nineth_p
    CommandText := 'UPDATE abonenty SET nineth_p=:PPRIZ ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    if flag_priz=1 then
    Parameters.ParamByName('PPRIZ').Value:='��������'
    else  Parameters.ParamByName('PPRIZ').Value:='���������';
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� nineth_a
    CommandText := 'UPDATE abonenty SET nineth_a=:PADR ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PADR').Value:=DBGrid1.Fields[5].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� nineth_m
    CommandText := 'UPDATE abonenty SET nineth_m=:PMASH ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PMASH').Value:=DBGrid1.Fields[6].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    end;
    10 : begin
    with ADOCommand1 do begin       //���������� ���� tenth_d
    CommandText := 'UPDATE abonenty SET tenth_d=:PDAT ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',DBGrid1.Fields[3].AsDateTime);
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� tenth_t
    CommandText := 'UPDATE abonenty SET tenth_t=:PTIM ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PTIM').Value:=DBGrid1.Fields[4].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� tenth_c
    CommandText := 'UPDATE abonenty SET tenth_c=:PCOST ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    if DBGrid1.Fields[10].AsString<>'' then
    Parameters.ParamByName('PCOST').Value:=DBGrid1.Fields[10].AsInteger
    else Parameters.ParamByName('PCOST').Value:=0;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� tenth_p
    CommandText := 'UPDATE abonenty SET tenth_p=:PPRIZ ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    if flag_priz=1 then
    Parameters.ParamByName('PPRIZ').Value:='��������'
    else  Parameters.ParamByName('PPRIZ').Value:='���������';
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� tenth_a
    CommandText := 'UPDATE abonenty SET tenth_a=:PADR ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PADR').Value:=DBGrid1.Fields[5].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� tenth_m
    CommandText := 'UPDATE abonenty SET tenth_m=:PMASH ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PMASH').Value:=DBGrid1.Fields[6].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    end;
    11 : begin
    with ADOCommand1 do begin       //���������� ���� eleventh_d
    CommandText := 'UPDATE abonenty SET eleventh_d=:PDAT ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',DBGrid1.Fields[3].AsDateTime);
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� eleventh_t
    CommandText := 'UPDATE abonenty SET eleventh_t=:PTIM ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PTIM').Value:=DBGrid1.Fields[4].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� eleventh_c
    CommandText := 'UPDATE abonenty SET eleventh_c=:PCOST ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    if DBGrid1.Fields[10].AsString<>'' then
    Parameters.ParamByName('PCOST').Value:=DBGrid1.Fields[10].AsInteger
    else Parameters.ParamByName('PCOST').Value:=0;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� eleventh_p
    CommandText := 'UPDATE abonenty SET eleventh_p=:PPRIZ ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    if flag_priz=1 then
    Parameters.ParamByName('PPRIZ').Value:='��������'
    else  Parameters.ParamByName('PPRIZ').Value:='���������';
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� eleventh_a
    CommandText := 'UPDATE abonenty SET eleventh_a=:PADR ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PADR').Value:=DBGrid1.Fields[5].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� eleventh_m
    CommandText := 'UPDATE abonenty SET eleventh_m=:PMASH ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    Parameters.ParamByName('PMASH').Value:=DBGrid1.Fields[6].AsString;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Execute;
    end;
    end;
    end;

    with ADOCommand1 do begin       //���������� ���� num_f
    CommandText := 'UPDATE abonenty SET num_f=:PNUMF ' +
    'WHERE kode=:PKODE';
    CommandType := cmdText;
    if NumF+1<=11 then
    Parameters.ParamByName('PNUMF').Value:=NumF+1;
  //  else Parameters.ParamByName('PNUMF').Value:=1;
    Execute;
    end;
end;

procedure TForm1.ObnovZvonki(flag_abon : integer);
begin
    with ADOCommand1 do begin       //���������� ���� kode
    CommandText := 'UPDATE zvonki SET kode=:PKODE ' +
    'WHERE num=:PNUM';
    CommandType := cmdText;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Parameters.ParamByName('PNUM').Value:=DBGrid1.Fields[0].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� adres
    CommandText := 'UPDATE zvonki SET adres=:PADRES ' +
    'WHERE num=:PNUM';
    CommandType := cmdText;
    Parameters.ParamByName('PADRES').Value:=DBGrid1.Fields[5].AsString;
    Parameters.ParamByName('PNUM').Value:=DBGrid1.Fields[0].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ���� car
    CommandText := 'UPDATE zvonki SET car=:PCAR ' +
    'WHERE num=:PNUM';
    CommandType := cmdText;
    Parameters.ParamByName('PCAR').Value:=DBGrid1.Fields[6].AsInteger;
    Parameters.ParamByName('PNUM').Value:=DBGrid1.Fields[0].AsString;
    Execute;
    end;

    with ADOCommand1 do begin       //���������� ���� zakaz
    CommandText := 'UPDATE zvonki SET zakaz=:PZAKAZ ' +
    'WHERE num=:PNUM';
    CommandType := cmdText;
    Parameters.ParamByName('PZAKAZ').Value:=1;
    Parameters.ParamByName('PNUM').Value:=DBGrid1.Fields[0].AsString;
    Execute;
    end;

    with ADOCommand1 do begin       //���������� ���� place_end
    CommandText := 'UPDATE zvonki SET place_end=:PPLACE_END ' +
    'WHERE num=:PNUM';
    CommandType := cmdText;
    Parameters.ParamByName('PPLACE_END').Value:=DBGrid1.Fields[9].AsString;
    Parameters.ParamByName('PNUM').Value:=DBGrid1.Fields[0].AsString;
    Execute;
    end;

    with ADOCommand1 do begin       //���������� ���� cost
    CommandText := 'UPDATE zvonki SET cost=:PCOST ' +
    'WHERE num=:PNUM';
    CommandType := cmdText;
    Parameters.ParamByName('PCOST').Value:=DBGrid1.Fields[10].AsString;
    Parameters.ParamByName('PNUM').Value:=DBGrid1.Fields[0].AsString;
    Execute;
    end;

    with ADOCommand1 do begin       //���������� ���� priznak
    CommandText := 'UPDATE zvonki SET priznak=:PPRIZNAK ' +
    'WHERE num=:PNUM';
    CommandType := cmdText;
    Parameters.ParamByName('PPRIZNAK').Value:=DBGrid1.Fields[11].AsString;
    Parameters.ParamByName('PNUM').Value:=DBGrid1.Fields[0].AsString;
    Execute;
    end;

end;

procedure TForm1.ObnovZvonkiBee(var ZakBee, CarBee : integer; var TelBee, KodBee, AdrBee, DatBee, TimBee : string);
begin
{ShowMessage(IntToStr(ZakBee));
ShowMessage(TelBee);
ShowMessage(KodBee);
ShowMessage(AdrBee);
ShowMessage(IntToStr(CarBee));}
{
//1. ��������� � ������� ������
  if DBGrid1.Fields[0].AsInteger>0 then begin //���� ������ ������ �������������
     with ADOCommand1 do begin       //������� ������ � ������� �������
  CommandText := 'select * from zvonki where num=:PNUM'; //�������� ������ ��� ����� ��������
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=DBGrid1.Fields[0].AsInteger;
  ADODataSet1.Recordset := Execute;
  end;

  if (ADODataSet1.RecordCount>0)  then begin //���� ������ � ������� ������� ���� ��������� �������� �����

      ObnovZvonki(flag_abon);
  end
  else begin
      //������, ��������� ������� ������, ������ ��� ����� ������ �������
 with ADOCommand1 do begin       //���������� ������� ���� � �������
  CommandText := 'INSERT INTO zvonki ' +
    '(TELEFON,KODE,DAT,TIM,ADRES,CAR,ZAKAZ) ' +
    'VALUES (:PTELEFON,:PKODE,:PDAT,:PTIM,:PADRES,:PCAR,:PZAKAZ)';
  CommandType := cmdText;
  Parameters.ParamByName('PTELEFON').Value:=DBGrid1.Fields[1].AsString;
  Parameters.ParamByName('PKODE').Value := DBGrid1.Fields[2].AsString;
  Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',StrToDate(DBGrid1.Fields[3].AsString));
  Parameters.ParamByName('PTIM').Value:=DBGrid1.Fields[4].AsString;
  Parameters.ParamByName('PADRES').Value:=DBGrid1.Fields[5].AsString;
  Parameters.ParamByName('PCAR').Value:=DBGrid1.Fields[6].AsInteger;
  Parameters.ParamByName('PZAKAZ').Value:=-1;
  Execute;
  end;
  end; }
 //////
  with ADOCommand1 do begin       //������� ������ � ������� �������
  CommandText := 'select * from zvonki where num=:PNUM'; //�������� ������ ��� ����� ��������
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=ZakBee;
  ADODataSet1.Recordset := Execute;
  end;
   if (ADODataSet1.RecordCount>0)  then begin //���� ������ � ������� ������� ���� ��������� �������� �����
   //ShowMessage('������ ����!');
   if (KodBee<>'') then begin
    with ADOCommand1 do begin       //���������� ���� kode
    CommandText := 'UPDATE zvonki SET kode=:PKODE ' +
    'WHERE num=:PNUM';
    CommandType := cmdText;
    Parameters.ParamByName('PKODE').Value:=KodBee;
    Parameters.ParamByName('PNUM').Value:=ZakBee;
    Execute;
    end;
   end;

   if (AdrBee<>'') then begin
    with ADOCommand1 do begin       //���������� ���� adres
    CommandText := 'UPDATE zvonki SET adres=:PADRES ' +
    'WHERE num=:PNUM';
    CommandType := cmdText;
    Parameters.ParamByName('PADRES').Value:=AdrBee;
    Parameters.ParamByName('PNUM').Value:=ZakBee;
    Execute;
    end;
   end;

   if (CarBee<>0) then begin
    with ADOCommand1 do begin       //���������� ���� car
    CommandText := 'UPDATE zvonki SET car=:PCAR ' +
    'WHERE num=:PNUM';
    CommandType := cmdText;
    Parameters.ParamByName('PCAR').Value:=DBGrid1.Fields[6].AsInteger;
    Parameters.ParamByName('PNUM').Value:=DBGrid1.Fields[0].AsString;
    Execute;
    end;
   end;
   end
   else begin  //���� ������ ���, ��������� ������
//   ShowMessage('������ ���!');
//   ShowMessage(IntToStr(ZakBee));
//   ShowMessage(IntToStr(CarBee));
//   ShowMessage(TelBee);
//   ShowMessage(KodBee);
//   ShowMessage(AdrBee);
//   ShowMessage(DatBee);
   Delete(TimBee,1,11);
//   ShowMessage(TimBee);
  with ADOCommand1 do begin
  CommandText := 'INSERT INTO zvonki ' +
    '(TELEFON,KODE,DAT,TIM,ADRES,CAR,ZAKAZ) ' +
    'VALUES (:PTELEFON,:PKODE,:PDAT,:PTIM,:PADRES,:PCAR,:PZAKAZ)';
  CommandType := cmdText;
  Parameters.ParamByName('PTELEFON').Value:=TelBee;
  Parameters.ParamByName('PKODE').Value := KodBee;
 Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',StrToDate(DatBee));
 Parameters.ParamByName('PTIM').Value:=TimBee;
  Parameters.ParamByName('PADRES').Value:=AdrBee;
  Parameters.ParamByName('PCAR').Value:=CarBee;
  Parameters.ParamByName('PZAKAZ').Value:=-1;
  Execute;
  end;
   end;
end;

procedure TForm1.DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin  //������������ �������
if DBGrid5.Fields[3].AsInteger=1 then
DBGrid5.Canvas.Font.Color:=clRed;
DBGrid5.DefaultDrawDataCell(Rect,Column.Field,State);
end;

procedure TForm1.N3Click(Sender: TObject);
begin
//�������������� ���������� � ������
end;

procedure TForm1.DBGrid1DblClick(Sender: TObject);
var X,Y : integer;
    pt : tpoint;
begin //�������� �� ������� ���� �� ������� ZAKAZI
 ZakazNum:=DBGrid1.Fields[0].AsInteger;
case DBGrid1.SelectedField.FieldNo of
12 : begin
getcursorpos(pt);
X:=pt.X;
Y:=pt.Y;
PopupMenu4.Popup(X, Y);


end;
9 : begin
// ����� �������
    with ADOCommand1 do begin       //���������� ���� zakaz
    CommandText := 'UPDATE zakazi SET en=:PEN ' +
    'WHERE zakaz=:PZAKAZ';
    CommandType := cmdText;
    Parameters.ParamByName('PEN').Value:=FormatDateTime('hh:mm',Now);
    Parameters.ParamByName('PZAKAZ').Value:=DBGrid1.Fields[0].AsString;
    Execute;
    end;
end;
8 : begin
    with ADOCommand1 do begin       //���������� ���� zakaz
    CommandText := 'UPDATE zakazi SET beg=:PBEG ' +
    'WHERE zakaz=:PZAKAZ';
    CommandType := cmdText;
    Parameters.ParamByName('PBEG').Value:=FormatDateTime('hh:mm',Now);
    Parameters.ParamByName('PZAKAZ').Value:=DBGrid1.Fields[0].AsString;
    Execute;
    end;
end;
end;
    with ADOQuery1 do begin  //����������� �� � �������
   SQL.Clear;
   SQL.Add('select zakaz,telefon,kode,dat,tim,adres,car,beg,en,place_end,cost,priznak,predvar,working,uvedomlen,vip from zakazi order by zakaz');
   Open;
   end;
end;

procedure TForm1.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var Bookmark : TBookmarkStr;
 CostPerc : real;
 resp : string;
 params : TStringList;
 LgPs : String;
begin  //������������ ������� ������ �� �������
case Key of
VK_RETURN : begin
 case DBGrid1.SelectedField.FieldNo of
 12 : begin
 //PopupMenu4.Popup(X, Y);
 //Showmessage('12 field!');
 end;
 11 : begin
{ if DBGrid1.Fields[2].AsString <> '' then begin //���� �������
 //Showmessage(IntToStr(DBGrid1.Fields[10].AsInteger));
 Dbgrid1.Fields[9].FocusControl;
 CostPerc:=DBGrid1.Fields[10].AsInteger;
 CostPerc:=0.9*CostPerc;
 //DBGrid1.Fields[10].AsInteger:=Round(CostPerc);
   if MessageDlg('���������� ����� �������� �� ' + FloatToStr(Round(CostPerc)) + ' ���?' ,mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
    DBGrid1.Fields[10].AsInteger:=Round(CostPerc);
   OtrabStoimost(NumF);
   end;
 end else begin  //���� �� �������
   if MessageDlg('���������� �����?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
   OtrabStoimost(NumF);
   end;
 end;
 }
 //���������
 if MessageDlg('���������� �����?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
    with ADOCommand1 do begin
    ADOCommand1.CommandText := 'select login,   password, car from users where car=:PCAR';
    ADOCommand1.CommandType := cmdText;
    Parameters.ParamByName('PCAR').Value:=DBGrid1.Fields[6].AsString;
    ADODataSet1.Recordset := Execute;
    end;
    ADODataSet1.First;
    if (ADODataSet1.Recordset.Fields[0].Value<>NULL) then begin
    LgPs:=ADODataSet1.Recordset.Fields[0].Value + '/' + ADODataSet1.Recordset.Fields[1].Value;
    end
    else LgPs:='';
    //-----------------------
    params:=TStringList.Create;
    resp:=idHTTP1.Post(RemoteHost+'/api/' + LgPs + '/orderdestroy',params);
    params.Free;
     if (POS('"error":"none"',resp)=0) then ShowMessage('������ �������� ������');
 end;
  
 end;
 10 : begin
 //����� �������
  ZakazNum:=DBGrid1.Fields[0].AsInteger;
 // DBGrid3.SetFocus;
  StringGrid1.SetFocus;
  DBGrid1.SetFocus;
    if DBGrid1.DataSource.DataSet.RecordCount>1 then begin
  DBGrid1.DataSource.DataSet.First;
  while not DBGrid1.DataSource.DataSet.Eof do begin
   if DBGrid1.Fields[0].AsInteger=ZakazNum then break;
  DBGrid1.DataSource.DataSet.Next;
   end;
    end;
    with ADOCommand1 do begin       //���������� ���� ����� �������
    CommandText := 'UPDATE zakazi SET place_end=:PPLACE ' +
    'WHERE zakaz=:PZAKAZ';
    CommandType := cmdText;
    Parameters.ParamByName('PPLACE').Value:=DBGrid1.Fields[9].AsString;
    Parameters.ParamByName('PZAKAZ').Value:=DBGrid1.Fields[0].AsString;
    Execute;
    end;
  Dbgrid1.Fields[10].FocusControl;
 end;
 9 : begin
 ZakazNum:=DBGrid1.Fields[0].AsInteger;
    with ADOCommand1 do begin       //���������� ���� en
    CommandText := 'UPDATE zakazi SET en=:PEN ' +
    'WHERE zakaz=:PZAKAZ';
    CommandType := cmdText;
    Parameters.ParamByName('PEN').Value:=FormatDateTime('hh:mm',Now);
    Parameters.ParamByName('PZAKAZ').Value:=DBGrid1.Fields[0].AsString;
    Execute;
    end;
 end;
 8 : begin
 ZakazNum:=DBGrid1.Fields[0].AsInteger;
    with ADOCommand1 do begin       //���������� ���� beg
    CommandText := 'UPDATE zakazi SET beg=:PBEG ' +
    'WHERE zakaz=:PZAKAZ';
    CommandType := cmdText;
    Parameters.ParamByName('PBEG').Value:=FormatDateTime('hh:mm',Now);
    Parameters.ParamByName('PZAKAZ').Value:=DBGrid1.Fields[0].AsString;
    Execute;
    end;
 end;
 7 : begin  //������
 //ShowMessage(DBGrid1.Fields[6].AsString);
 ZakazNum:=DBGrid1.Fields[0].AsInteger;
// DBGrid1.Fields[6].AsString
 //params.Add('car=' + DBGrid1.Fields[6].AsString);
 //params.Add('orderid=' + IntToStr(DBGrid1.Fields[0].AsInteger));
{  LVar:=DBGrid1.Fields[0].AsVariant;
 params.Add('orderid=' + VarToStr(LVar));
resp :=idHTTP1.Post(RemoteHost+'/api/' + LogPswSrw + '/dispreg',params);
params.Free; }
StringGrid1.SetFocus;
 DBGrid1.SetFocus;
  //  if DBGrid1.DataSource.DataSet.RecordCount>1 then begin
 DBGrid1.DataSource.DataSet.First;
 while not DBGrid1.DataSource.DataSet.Eof do begin
  if DBGrid1.Fields[0].AsInteger=ZakazNum then break;
 DBGrid1.DataSource.DataSet.Next;
 end; 
 //ShowMessage(DBGrid1.Fields[6].AsString);
// MyString:= 'car=' + IntToStr(ZakazNum);
// ShowMessage(MyString);
 with ADOCommand1 do begin
    ADOCommand1.CommandText := 'select login,   password, car from users where car=:PCAR';
    ADOCommand1.CommandType := cmdText;
    Parameters.ParamByName('PCAR').Value:=DBGrid1.Fields[6].AsString;
    ADODataSet1.Recordset := Execute;
    end;
    ADODataSet1.First;
  if (ADODataSet1.RecordCount>0)  then begin
    if (ADODataSet1.Recordset.Fields[0].Value<>NULL) then begin
    LgPs:=ADODataSet1.Recordset.Fields[0].Value + '/' + ADODataSet1.Recordset.Fields[1].Value;
    end
    else begin
    LgPs:='';
    end;
  end
  else ShowMessage('������ �������� ���!');

  params:=TStringList.Create;
 // params.Add('row=1');
  params.Add('point_id=1');
  params.Add('state=' + '0');
  //params.Add('delzak=0');

  idHTTP1.Post(RemoteHost+'/api/' + LgPs + '/qpush',params);
  params.Free;
 //end;
 {
 //DBGrid3.SetFocus;
 StringGrid1.SetFocus;
 DBGrid1.SetFocus;
    if DBGrid1.DataSource.DataSet.RecordCount>1 then begin
 DBGrid1.DataSource.DataSet.First;
 while not DBGrid1.DataSource.DataSet.Eof do begin
  if DBGrid1.Fields[0].AsInteger=ZakazNum then break;
 DBGrid1.DataSource.DataSet.Next;
 end;
 //ShowMessage(DBGrid1.Fields[6].AsString);
 //-------------------------------------------------------------------------------
      with ADOCommand1 do begin
      CommandText := 'SELECT * from point_queues '+
      'WHERE car = :PCAR';
       CommandType := cmdText;
      Parameters.ParamByName('PCAR').Value := DBGrid1.Fields[6].AsInteger;
      ADODataSet1.Recordset := Execute;
      end;
      if ADODataSet1.RecordCount>0 then begin //���� ������ � �������

    with ADOCommand1 do begin       //���������� ���� car
    CommandText := 'UPDATE zakazi SET car=:PCAR ' +
    'WHERE zakaz=:PZAKAZ';
    CommandType := cmdText;
    Parameters.ParamByName('PCAR').Value:=DBGrid1.Fields[6].AsInteger;
    Parameters.ParamByName('PZAKAZ').Value:=DBGrid1.Fields[0].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ������� �����
    CommandText := 'UPDATE point_queues SET point_id=1, updated_at=NOW() ' +
    'WHERE car=:PCAR';
    CommandType := cmdText;
    Parameters.ParamByName('PCAR').Value:=DBGrid1.Fields[6].AsInteger;
    Execute;
    end;
//--------------------------------------------------------------------------------------
    end
    else  ShowMessage('����� ������ ��� � �������!');
      end
      else begin  //���� ������ � ������� ������ ����
      with ADOCommand1 do begin
      CommandText := 'SELECT * from point_queues '+
      'WHERE car = :PCAR';
       CommandType := cmdText;
      Parameters.ParamByName('PCAR').Value := DBGrid1.Fields[6].AsInteger;
      ADODataSet1.Recordset := Execute;
      end;
      if ADODataSet1.RecordCount>0 then begin //���� ������ � �������

    with ADOCommand1 do begin       //���������� ���� car
    CommandText := 'UPDATE zakazi SET car=:PCAR ' +
    'WHERE zakaz=:PZAKAZ';
    CommandType := cmdText;
    Parameters.ParamByName('PCAR').Value:=DBGrid1.Fields[6].AsInteger;
    Parameters.ParamByName('PZAKAZ').Value:=DBGrid1.Fields[0].AsString;
    Execute;
    end;
    with ADOCommand1 do begin       //���������� ������� �����
    CommandText := 'UPDATE point_queues SET point_id=1, updated_at=NOW() ' +
    'WHERE car=:PCAR';
    CommandType := cmdText;
    Parameters.ParamByName('PCAR').Value:=DBGrid1.Fields[6].AsInteger;
    Execute;
    end;

    end
    else  ShowMessage('����� ������ ��� � �������!');
      end;
    }
 end;
 6 : begin  //�����
  ZakazNum:=DBGrid1.Fields[0].AsInteger;
  StringGrid1.SetFocus;
  DBGrid1.SetFocus;
    if DBGrid1.DataSource.DataSet.RecordCount>1 then begin
  DBGrid1.DataSource.DataSet.First;
  while not DBGrid1.DataSource.DataSet.Eof do begin
   if DBGrid1.Fields[0].AsInteger=ZakazNum then break;
  DBGrid1.DataSource.DataSet.Next;
   end;
    end;
    with ADOCommand1 do begin       //���������� ���� adres
    CommandText := 'UPDATE zakazi SET adres=:PADRES ' +
    'WHERE zakaz=:PZAKAZ';
    CommandType := cmdText;
    Parameters.ParamByName('PADRES').Value:=DBGrid1.Fields[5].AsString;
    Parameters.ParamByName('PZAKAZ').Value:=DBGrid1.Fields[0].AsString;
    Execute;
    end;
 end;
 5 : begin  //�����
 ZakazNum:=DBGrid1.Fields[0].AsInteger;
    with ADOCommand1 do begin       //���������� ���� beg
    CommandText := 'UPDATE zakazi SET tim=:PTIM ' +
    'WHERE zakaz=:PZAKAZ';
    CommandType := cmdText;
    Parameters.ParamByName('PTIM').Value:=FormatDateTime('hh:mm',Now);
    Parameters.ParamByName('PZAKAZ').Value:=DBGrid1.Fields[0].AsString;
    Execute;
    end;
 end;
 4 : begin //����
 ZakazNum:=DBGrid1.Fields[0].AsInteger;
    with ADOCommand1 do begin       //���������� ���� beg
    CommandText := 'UPDATE zakazi SET dat=:PDAT ' +
    'WHERE zakaz=:PZAKAZ';
    CommandType := cmdText;
    Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',Now);
    Parameters.ParamByName('PZAKAZ').Value:=DBGrid1.Fields[0].AsString;
    Execute;
    end;
 end;
 3 : begin //���
  ZakazNum:=DBGrid1.Fields[0].AsInteger;
  DBGrid3.SetFocus;
  DBGrid1.SetFocus;
    if DBGrid1.DataSource.DataSet.RecordCount>1 then begin
  DBGrid1.DataSource.DataSet.First;
  while not DBGrid1.DataSource.DataSet.Eof do begin
   if DBGrid1.Fields[0].AsInteger=ZakazNum then break;
  DBGrid1.DataSource.DataSet.Next;
   end;
    end;
    with ADOCommand1 do begin       //���������� ���� kode
    CommandText := 'UPDATE zakazi SET kode=:PKODE ' +
    'WHERE zakaz=:PZAKAZ';
    CommandType := cmdText;
    Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
    Parameters.ParamByName('PZAKAZ').Value:=DBGrid1.Fields[0].AsString;
    Execute;
    end;
 end;
 2 : begin //�������
  ZakazNum:=DBGrid1.Fields[0].AsInteger;
  DBGrid3.SetFocus;
  DBGrid1.SetFocus;
    if DBGrid1.DataSource.DataSet.RecordCount>1 then begin
  DBGrid1.DataSource.DataSet.First;
  while not DBGrid1.DataSource.DataSet.Eof do begin
   if DBGrid1.Fields[0].AsInteger=ZakazNum then break;
  DBGrid1.DataSource.DataSet.Next;
   end;
    end;
    with ADOCommand1 do begin       //���������� ���� telefon
    CommandText := 'UPDATE zakazi SET telefon=:PTELEFON ' +
    'WHERE zakaz=:PZAKAZ';
    CommandType := cmdText;
    Parameters.ParamByName('PTELEFON').Value:=DBGrid1.Fields[1].AsString;
    Parameters.ParamByName('PZAKAZ').Value:=DBGrid1.Fields[0].AsString;
    Execute;
    end;
 end;
 end;

    {
     with ADOQuery1 do begin  //����������� �� � �������
   SQL.Clear;
   SQL.Add('select zakaz,telefon,kode,dat,tim,adres,car,beg,en,place_end,cost,priznak,predvar,working,uvedomlen,vip from zakazi order by zakaz');
   Open;
   end;
    if DBGrid1.DataSource.DataSet.RecordCount>1 then begin  //���������� �� ����� ����� ������
 DBGrid1.DataSource.DataSet.First;
 while not DBGrid1.DataSource.DataSet.Eof do begin
  if DBGrid1.Fields[0].AsInteger=ZakazNum then break;
 DBGrid1.DataSource.DataSet.Next;
 end;
    end;
    }

 LabeledEdit1.SetFocus;
// ClientSocket1.Socket.SendText(Priority+'REFRESH');
idHTTP1.Get(RemoteHost+'/api/' + LogPswSrw + '/reforders');
end;
VK_DELETE : begin

    with ADOQuery1 do begin  //����������� �� � �������
   SQL.Clear;
   SQL.Add('select zakaz,telefon,kode,dat,tim,adres,car,beg,en,place_end,cost,priznak,predvar,working,uvedomlen,vip from zakazi order by zakaz');
   Open;
   end;
end;

end;

end;

procedure TForm1.OtrabStoimost(NumF : integer);
var
Bookmark : TBookmarkStr;
 CarBee : integer;
begin
if DBGrid1.Fields[2].AsString<>'' then begin

   with ADOCommand1 do begin
  CommandText := 'select * from abonenty where kode=:PKODE'; //�������� ������ ��� ����� ��������
  CommandType := cmdText;
  Parameters.ParamByName('PKODE').Value:=DBGrid1.Fields[2].AsString;
  ADODataSet1.Recordset := Execute;
  end;

  if (ADODataSet1.RecordCount>0)  then begin //���� ������� � ����� ������� ����������
//1. ��������� � ������� ��������

  if ADODataSet1.Recordset.Fields[7].Value<>NULL then begin //���������� �������� Balans
     if ADODataSet1.Recordset.Fields[7].Value<>0 then  begin
      Balans:=ADODataSet1.Recordset.Fields[7].Value;
     end
     else begin
      Balans:=0;
     end;
   end
   else begin
    Balans:=0;
    end;   //���������� �������� Balans

  if ADODataSet1.Recordset.Fields[8].Value<>NULL then begin //���������� �������� Poezdok
     if ADODataSet1.Recordset.Fields[8].Value<>0 then  begin
      Poezdok:=ADODataSet1.Recordset.Fields[8].Value;
     end
     else begin
      Poezdok:=0;
     end;
   end
   else begin
    Poezdok:=0;
    end;   //���������� �������� Poezdok

  if ADODataSet1.Recordset.Fields[10].Value<>NULL then begin //���������� �������� Priz
     if ADODataSet1.Recordset.Fields[10].Value<>0 then  begin
      Priz:=ADODataSet1.Recordset.Fields[10].Value;
     end
     else begin
      Priz:=0;
     end;
   end
   else begin
    Priz:=0;
    end;   //���������� �������� Priz

   if DBGrid1.Fields[11].AsString='��������' then begin
   flag_priz:=1;
   ObnovAbonenty(flag_priz); //��������� ��������� ���������� ������� ���������
   end
   else begin
  //  ShowMessage('��������� �������');
    ObnovAbonenty(flag_priz);
   end;
//2. ��������� � ������� ������
  if DBGrid1.Fields[0].AsInteger>0 then begin //���� ������ ������ �������������
     with ADOCommand1 do begin       //������� ������ � ������� �������
  CommandText := 'select * from zvonki where num=:PNUM'; //�������� ������ ��� ����� ��������
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=DBGrid1.Fields[0].AsInteger;
  ADODataSet1.Recordset := Execute;
  end;

  if (ADODataSet1.RecordCount>0)  then begin //���� ������ � ������� ������� ���� ��������� �������� �����

      ObnovZvonki(flag_abon);
  end
  else begin
      //������, ��������� ������� ������, ������ ��� ����� ������ �������
 with ADOCommand1 do begin       //���������� ������� ���� � �������
  CommandText := 'INSERT INTO zvonki ' +
    '(TELEFON,KODE,DAT,TIM,ADRES,CAR,BEG,EN,COST,PRIZNAK,ZAKAZ,PLACE_END) ' +
    'VALUES (:PTELEFON,:PKODE,:PDAT,:PTIM,:PADRES,:PCAR,:PBEG,:PEN,:PCOST,:PPRIZNAK,:PZAKAZ,:PPLACE)';
  CommandType := cmdText;
  //Parameters.ParamByName('PZAKAZ').Value := NumZak;
  Parameters.ParamByName('PTELEFON').Value:=DBGrid1.Fields[1].AsString;
  Parameters.ParamByName('PKODE').Value := DBGrid1.Fields[2].AsString;
  Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',StrToDate(DBGrid1.Fields[3].AsString));
  Parameters.ParamByName('PTIM').Value:=DBGrid1.Fields[4].AsString;
  Parameters.ParamByName('PADRES').Value:=DBGrid1.Fields[5].AsString;
  Parameters.ParamByName('PCAR').Value:=DBGrid1.Fields[6].AsInteger;
    if Length(DBGrid1.Fields[7].AsString)>0 then
  Parameters.ParamByName('PBEG').Value:=DBGrid1.Fields[7].AsString
    else
  Parameters.ParamByName('PBEG').Value:=DBGrid1.Fields[4].AsString;
    if Length(DBGrid1.Fields[8].AsString)>0 then
  Parameters.ParamByName('PEN').Value:=DBGrid1.Fields[8].AsString
    else
  Parameters.ParamByName('PEN').Value:=DBGrid1.Fields[4].AsString;

    if Length(DBGrid1.Fields[9].AsString)>0 then
  Parameters.ParamByName('PPLACE').Value:=DBGrid1.Fields[9].AsString
    else
  Parameters.ParamByName('PPLACE').Value:='';

    if Length(DBGrid1.Fields[10].AsString)>0 then
  Parameters.ParamByName('PCOST').Value:=DBGrid1.Fields[10].AsInteger
    else
  Parameters.ParamByName('PCOST').Value:=0;
  Parameters.ParamByName('PPRIZNAK').Value:=DBGrid1.Fields[11].AsString;
  Parameters.ParamByName('PZAKAZ').Value:=-1;
  Execute;
  end;
  end;
 //////
  end
  else begin
  //���� ������ ������ �������
 with ADOCommand1 do begin       //���������� ������� ���� � �������
  CommandText := 'INSERT INTO zvonki ' +
    '(TELEFON,KODE,DAT,TIM,ADRES,CAR,BEG,EN,COST,PRIZNAK,ZAKAZ,PLACE_END) ' +
    'VALUES (:PTELEFON,:PKODE,:PDAT,:PTIM,:PADRES,:PCAR,:PBEG,:PEN,:PCOST,:PPRIZNAK,:PZAKAZ,:PPLACE)';
  CommandType := cmdText;
  //Parameters.ParamByName('PZAKAZ').Value := NumZak;
  Parameters.ParamByName('PTELEFON').Value:=DBGrid1.Fields[1].AsString;
  Parameters.ParamByName('PKODE').Value := DBGrid1.Fields[2].AsString;
  Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',StrToDate(DBGrid1.Fields[3].AsString));
  Parameters.ParamByName('PTIM').Value:=DBGrid1.Fields[4].AsString;
  Parameters.ParamByName('PADRES').Value:=DBGrid1.Fields[5].AsString;
  Parameters.ParamByName('PCAR').Value:=DBGrid1.Fields[6].AsInteger;
    if Length(DBGrid1.Fields[7].AsString)>0 then
  Parameters.ParamByName('PBEG').Value:=DBGrid1.Fields[7].AsString
    else
  Parameters.ParamByName('PBEG').Value:=DBGrid1.Fields[4].AsString;
    if Length(DBGrid1.Fields[8].AsString)>0 then
  Parameters.ParamByName('PEN').Value:=DBGrid1.Fields[8].AsString
    else
  Parameters.ParamByName('PEN').Value:=DBGrid1.Fields[4].AsString;
    if Length(DBGrid1.Fields[9].AsString)>0 then
  Parameters.ParamByName('PPLACE').Value:=DBGrid1.Fields[9].AsString
    else
  Parameters.ParamByName('PPLACE').Value:='';
    if Length(DBGrid1.Fields[10].AsString)>0 then
  Parameters.ParamByName('PCOST').Value:=DBGrid1.Fields[10].AsInteger
    else
  Parameters.ParamByName('PCOST').Value:=0;
  Parameters.ParamByName('PPRIZNAK').Value:=DBGrid1.Fields[11].AsString;
  Parameters.ParamByName('PZAKAZ').Value:=-1;
  Execute;
  end;
  end;
//3 ��������� � ������� �����

    if  (DBGrid1.Fields[6].AsString<>'') then CarBee:= DBGrid1.Fields[6].AsInteger
    else  CarBee:=0;
  //  ShowMessage (IntToStr(CarBee));
  with ADOCommand1 do begin       //������� ����� � ������� ��������� ������
  CommandText := 'select car,row,col from cqueue where car=:PCAR';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=CarBee;
  ADODataSet1.Recordset := Execute;
  end;
 if (CarBee>0) and (ADODataSet1.Recordset.RecordCount>0) then begin  //���� ���� ������, ������������
StrGrdCel:=CarBee;

StrGrdRow:=ADODataSet1.Recordset.Fields[1].Value;
IF (StrGrdRow=1) then  PerestavCarStrGrid(0);
 end
else {ShowMessage('� ������� ��� ������ � ����� �������!')};


//6 �������� �� ������� �������
with ADOCommand1 do begin
  CommandText := 'DELETE FROM zakazi WHERE ZAKAZ=:PZAKAZ';
  CommandType := cmdText;
  Parameters.ParamByName('PZAKAZ').Value:=DBGrid1.Fields[0].AsInteger;
  Execute;
  end;

  end
  else begin
  ShowMessage('�������� � ����� ������� �� ����������!');
  end;
end
else begin   //���� ��� �� �������

//1 ��������� � ������� ������
  if DBGrid1.Fields[0].AsInteger>0 then begin //���� ������ ������ �������������
     with ADOCommand1 do begin       //������� ������ � ������� �������
  CommandText := 'select * from zvonki where num=:PNUM'; //�������� ������ ��� ����� ��������
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=DBGrid1.Fields[0].AsInteger;
  ADODataSet1.Recordset := Execute;
  end;

  if (ADODataSet1.RecordCount>0)  then begin //���� ������ � ������� ������� ���� ��������� �������� �����
      ObnovZvonki(flag_abon);
  end
  else begin
      //������, ��������� ������� ������, ������ ��� ����� ������ �������
 with ADOCommand1 do begin       //���������� ������� ���� � �������
  CommandText := 'INSERT INTO zvonki ' +
    '(TELEFON,DAT,TIM,ADRES,CAR,BEG,EN,COST,PRIZNAK,ZAKAZ,PLACE_END) ' +
    'VALUES (:PTELEFON,:PDAT,:PTIM,:PADRES,:PCAR,:PBEG,:PEN,:PCOST,:PPRIZNAK,:PZAKAZ,:PPLACE)';
  CommandType := cmdText;
  //Parameters.ParamByName('PZAKAZ').Value := NumZak;
  Parameters.ParamByName('PTELEFON').Value:=DBGrid1.Fields[1].AsString;
 // Parameters.ParamByName('PKODE').Value := DBGrid1.Fields[2].AsString;
  Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',StrToDate(DBGrid1.Fields[3].AsString));
  Parameters.ParamByName('PTIM').Value:=DBGrid1.Fields[4].AsString;
  Parameters.ParamByName('PADRES').Value:=DBGrid1.Fields[5].AsString;
  Parameters.ParamByName('PCAR').Value:=DBGrid1.Fields[6].AsInteger;
    if Length(DBGrid1.Fields[7].AsString)>0 then
  Parameters.ParamByName('PBEG').Value:=DBGrid1.Fields[7].AsString
    else
  Parameters.ParamByName('PBEG').Value:=DBGrid1.Fields[4].AsString;
    if Length(DBGrid1.Fields[8].AsString)>0 then
  Parameters.ParamByName('PEN').Value:=DBGrid1.Fields[8].AsString
    else
  Parameters.ParamByName('PEN').Value:=DBGrid1.Fields[4].AsString;
    if Length(DBGrid1.Fields[9].AsString)>0 then
  Parameters.ParamByName('PPLACE').Value:=DBGrid1.Fields[9].AsString
    else
  Parameters.ParamByName('PPLACE').Value:='';
    if Length(DBGrid1.Fields[10].AsString)>0 then
  Parameters.ParamByName('PCOST').Value:=DBGrid1.Fields[10].AsInteger
    else
  Parameters.ParamByName('PCOST').Value:=0;
  Parameters.ParamByName('PPRIZNAK').Value:=DBGrid1.Fields[11].AsString;
  Parameters.ParamByName('PZAKAZ').Value:=-1;
  Execute;
  end;
  end;
 //////
  end
  else begin
  //���� ������ ������ �������
 with ADOCommand1 do begin       //���������� ������� ���� � �������
  CommandText := 'INSERT INTO zvonki ' +
    '(TELEFON,DAT,TIM,ADRES,CAR,BEG,EN,COST,PRIZNAK,ZAKAZ,PLACE_END) ' +
    'VALUES (:PTELEFON,:PDAT,:PTIM,:PADRES,:PCAR,:PBEG,:PEN,:PCOST,:PPRIZNAK,:PZAKAZ,:PPLACE)';
  CommandType := cmdText;
  //Parameters.ParamByName('PZAKAZ').Value := NumZak;
  Parameters.ParamByName('PTELEFON').Value:=DBGrid1.Fields[1].AsString;
  //Parameters.ParamByName('PKODE').Value := DBGrid1.Fields[2].AsString;
  Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',StrToDate(DBGrid1.Fields[3].AsString));
  Parameters.ParamByName('PTIM').Value:=DBGrid1.Fields[4].AsString;
  Parameters.ParamByName('PADRES').Value:=DBGrid1.Fields[5].AsString;
  Parameters.ParamByName('PCAR').Value:=DBGrid1.Fields[6].AsInteger;
    if Length(DBGrid1.Fields[7].AsString)>0 then
  Parameters.ParamByName('PBEG').Value:=DBGrid1.Fields[7].AsString
    else
  Parameters.ParamByName('PBEG').Value:=DBGrid1.Fields[4].AsString;
    if Length(DBGrid1.Fields[8].AsString)>0 then
  Parameters.ParamByName('PEN').Value:=DBGrid1.Fields[8].AsString
    else
  Parameters.ParamByName('PEN').Value:=DBGrid1.Fields[4].AsString;
    if Length(DBGrid1.Fields[9].AsString)>0 then
  Parameters.ParamByName('PPLACE').Value:=DBGrid1.Fields[9].AsString
    else
  Parameters.ParamByName('PPLACE').Value:='';
    if Length(DBGrid1.Fields[10].AsString)>0 then
  Parameters.ParamByName('PCOST').Value:=DBGrid1.Fields[10].AsInteger
    else
  Parameters.ParamByName('PCOST').Value:=0;
  Parameters.ParamByName('PPRIZNAK').Value:=DBGrid1.Fields[11].AsString;
  Parameters.ParamByName('PZAKAZ').Value:=-1;
  Execute;
  end;
  end;
//2 ��������� � ������� ������� �����

    if  (DBGrid1.Fields[6].AsString<>'') then CarBee:= DBGrid1.Fields[6].AsInteger
    else  CarBee:=0;
  //  ShowMessage (IntToStr(CarBee));
  with ADOCommand1 do begin       //������� ����� � ������� ��������� ������
  CommandText := 'select car,row,col from cqueue where car=:PCAR';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=CarBee;
  ADODataSet1.Recordset := Execute;
  end;
 if (CarBee>0) and (ADODataSet1.Recordset.RecordCount>0) then begin  //���� ���� ������, ������������
StrGrdCel:=CarBee;

StrGrdRow:=ADODataSet1.Recordset.Fields[1].Value;
IF (StrGrdRow=1) then  PerestavCarStrGrid(0);
 end
else  ;
    
//3 ��������� � ������� ��������
{
     with ADOCommand1 do begin       //������� ������ � ������� �������
  CommandText := 'select * from cars where num=:PNUM'; //�������� ������ ��� ����� ��������
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=DBGrid1.Fields[6].AsInteger;
  ADODataSet1.Recordset := Execute;
  end;
 if (ADODataSet1.RecordCount>0) then  begin
     if DBGrid1.Fields[10].AsString<>'' then begin
      Summa:=ADODataSet1.Recordset.Fields[5].Value+DBGrid1.Fields[10].AsInteger;
      end
      else Summa:=ADODataSet1.Recordset.Fields[5].Value;

    with ADOCommand1 do begin       //���������� ���� summa
    CommandText := 'UPDATE cars SET summa=:PSUMMA ' +
    'WHERE num=:PNUM';
    CommandType := cmdText;
    Parameters.ParamByName('PSUMMA').Value:=Summa;
    Parameters.ParamByName('PNUM').Value:=DBGrid1.Fields[6].AsString;
    Execute;
    end;
 end; }
//4 ��������� � ������� �����������
  // ShowMessage('��������� ');
  {   with ADOCommand1 do begin       //������� ������ � ������� ����������
  CommandText := 'select * from disp where num=:PNUM'; //�������� ������ ��� ����� ����������
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=Working;
  ADODataSet1.Recordset := Execute;
  end;
 if (ADODataSet1.RecordCount>0) then  begin
  if DBGrid1.Fields[13].AsInteger = Working then begin //��������� �� ��������� �� ���������

  end
  else begin    //���� ��������� ���������
    //ShowMessage('��������� �����');
     with ADOCommand1 do begin       //������� ������ � ������� ����������
  CommandText := 'select * from disp where num=:PNUM'; //�������� ������ ��� ����� ����������
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=DBGrid1.Fields[13].AsInteger;
  ADODataSet1.Recordset := Execute;
  end;
     if DBGrid1.Fields[10].AsString<>'' then begin
      Summa:=ADODataSet1.Recordset.Fields[2].Value+DBGrid1.Fields[10].AsInteger;
      end
      else Summa:=ADODataSet1.Recordset.Fields[2].Value;
    with ADOCommand1 do begin       //���������� ���� summa
    CommandText := 'UPDATE disp SET week=:PSUMMA ' +
    'WHERE num=:PNUM';
    CommandType := cmdText;
    Parameters.ParamByName('PSUMMA').Value:=Summa;
    Parameters.ParamByName('PNUM').Value:=DBGrid1.Fields[13].AsInteger;
    Execute;
    end;
  end;
 //end;

    with ADOCommand1 do begin
  CommandText := 'UPDATE cars SET end_date=:PDATE WHERE num=:PNUM';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=DBGrid1.Fields[6].AsString;
  Parameters.ParamByName('PDATE').Value:=FormatDateTime('yyyy-mm-dd',Now);
 // Parameters.ParamByName('PSTATE').Value:=1;
  Execute;
  end;
   with ADOCommand1 do begin
  CommandText := 'UPDATE cars SET end_time=:PTIME WHERE num=:PNUM';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=DBGrid1.Fields[6].AsString;
  Parameters.ParamByName('PTIME').Value:=FormatDateTime('hh:mm',Now);
 // Parameters.ParamByName('PSTATE').Value:=1;
  Execute;
  end;
 end;  }
//5 �������� �� ������� �������
with ADOCommand1 do begin
  CommandText := 'DELETE FROM zakazi WHERE ZAKAZ=:PZAKAZ';
  CommandType := cmdText;
  Parameters.ParamByName('PZAKAZ').Value:=DBGrid1.Fields[0].AsInteger;
  Execute;
  end;

end;
flag_priz:=0;
//flag_abon:=0;
   Bookmark := DBGrid1.DataSource.DataSet.Bookmark;
   with ADOQuery1 do begin  //����������� ������� ����� � �������
   SQL.Clear;
   SQL.Add('select zakaz,telefon,kode,dat,tim,adres,car,beg,en,place_end,cost,priznak,predvar,working,uvedomlen,vip from zakazi order by zakaz');
   Open;
   DBGrid1.DataSource.DataSet.Bookmark:=Bookmark;
   end;
   with ADOQuery3 do begin  //����������� ������� ����� � �������
   SQL.Clear;
   SQL.Add('select * from cqueue order by num');
   Open;
   end;

end;

procedure TForm1.N10Click(Sender: TObject);
begin  //������� �� ���� ���������
//PriznPoezd:='���������';
    with ADOCommand1 do begin       //���������� ���� priznak
    CommandText := 'UPDATE zakazi SET priznak=:PPRIZNAK ' +
    'WHERE zakaz=:PZAKAZ';
    CommandType := cmdText;
    Parameters.ParamByName('PPRIZNAK').Value:='���������';
    Parameters.ParamByName('PZAKAZ').Value:=ZakazNum;
    Execute;
    end;
   with ADOQuery1 do begin  //����������� ������� ����� � �������
   SQL.Clear;
   SQL.Add('select zakaz,telefon,kode,dat,tim,adres,car,beg,en,place_end,cost,priznak,predvar,working,uvedomlen,vip from zakazi order by zakaz');
   Open;
   end;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
//PriznPoezd:='��������';
    with ADOCommand1 do begin       //���������� ���� priznak
    CommandText := 'UPDATE zakazi SET priznak=:PPRIZNAK ' +
    'WHERE zakaz=:PZAKAZ';
    CommandType := cmdText;
    Parameters.ParamByName('PPRIZNAK').Value:='��������';
    Parameters.ParamByName('PZAKAZ').Value:=ZakazNum;
    Execute;
    end;
   with ADOQuery1 do begin  //����������� ������� ����� � �������
   SQL.Clear;
   SQL.Add('select zakaz,telefon,kode,dat,tim,adres,car,beg,en,place_end,cost,priznak,predvar,working,uvedomlen,vip from zakazi order by zakaz');
   Open;
   end;
end;

procedure TForm1.N12Click(Sender: TObject);
begin
//PriznPoezd:='����������';
    with ADOCommand1 do begin       //���������� ���� priznak
    CommandText := 'UPDATE zakazi SET priznak=:PPRIZNAK ' +
    'WHERE zakaz=:PZAKAZ';
    CommandType := cmdText;
    Parameters.ParamByName('PPRIZNAK').Value:='����������';
    Parameters.ParamByName('PZAKAZ').Value:=ZakazNum;
    Execute;
    end;
   with ADOQuery1 do begin  //����������� ������� ����� � �������
   SQL.Clear;
   SQL.Add('select zakaz,telefon,kode,dat,tim,adres,car,beg,en,place_end,cost,priznak,predvar,working,uvedomlen,vip from zakazi order by zakaz');
   Open;
   end;    
end;

procedure TForm1.N5Click(Sender: TObject);
begin   //����� ���� � �������
Application.CreateForm(TForm3, Form3);
Form3.Caption:='� �������';
Form3.Button2.Visible:=false;
Form3.ShowModal;
Form3.Free;
//ShowMessage(Edit1.Text);
{
if Length(Edit1.Text)>0 then begin
     with ADOCommand1 do begin       //������� ������ � ������� ������
  CommandText := 'select * from cars where num=:PNUM'; //�������� ������ ��� ����� ����������
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=StrToInt(Edit1.Text);
  ADODataSet1.Recordset := Execute;
  end;
 if (ADODataSet1.RecordCount>0) then  begin
 //ShowMessage('����� ������ ����!');
     with ADOCommand1 do begin       //������� ������ � ������� ������� �����
  CommandText := 'select * from cqueue where car=:PCAR'; //�������� ������ ��� ����� ����������
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=StrToInt(Edit1.Text);
  ADODataSet1.Recordset := Execute;
  end;
 if (ADODataSet1.RecordCount=0) then  begin
 //ShowMessage('�������� ������');
     with ADOCommand1 do begin       //������� ������ � ������� ������
  CommandText := 'select * from cqueue order by num'; //�������� ������ ��� ����� ����������
  CommandType := cmdText;
  //Parameters.ParamByName('PNUM').Value:=StrToInt(LabeledEdit1.Text);
  ADODataSet1.Recordset := Execute;
  end;
 if (ADODataSet1.RecordCount>0) then  begin
 ADODataSet1.Recordset.MoveLast;   //��������� ������ � �����
 NumQueue:=ADODataSet1.Recordset.Fields[0].Value;
 // ShowMessage(IntToStr(NumQueue));
   with ADOCommand1 do begin
  CommandText := 'INSERT INTO cqueue (num,car,state) VALUES (:PNUM,:PCAR,:PSTATE)';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=NumQueue+1;
  Parameters.ParamByName('PCAR').Value:=StrToInt(Edit1.Text);
  Parameters.ParamByName('PSTATE').Value:=1;
  Execute;
  end;
 // NumCar:=NumQueue+1;
 end
 else begin //��������� 1-� ������
   with ADOCommand1 do begin
  CommandText := 'INSERT INTO cqueue (num,car,state) VALUES (:PNUM,:PCAR,:PSTATE)';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=0;
  Parameters.ParamByName('PCAR').Value:=StrToInt(Edit1.Text);
  Parameters.ParamByName('PSTATE').Value:=1;
  Execute;
  end;
 // NumCar:=0;
 end;
  // ShowMessage(IntToStr(NumCar));
   with ADOCommand1 do begin
  CommandText := 'UPDATE cars SET begin_date=:PDATE WHERE num=:PNUM';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=StrToInt(Edit1.Text);
  Parameters.ParamByName('PDATE').Value:=FormatDateTime('yyyy-mm-dd',Now);
 // Parameters.ParamByName('PSTATE').Value:=1;
  Execute;
  end;
   with ADOCommand1 do begin
  CommandText := 'UPDATE cars SET begin_time=:PTIME WHERE num=:PNUM';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=StrToInt(Edit1.Text);
  Parameters.ParamByName('PTIME').Value:=FormatDateTime('hh:mm',Now);
 // Parameters.ParamByName('PSTATE').Value:=1;
  Execute;
  end;
    with ADOCommand1 do begin
  CommandText := 'UPDATE cars SET summa=0 WHERE num=:PNUM';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=StrToInt(Edit1.Text);
 // Parameters.ParamByName('PTIME').Value:=FormatDateTime('hh:mm',Now);
 // Parameters.ParamByName('PSTATE').Value:=1;
  Execute;
  end;
   with Form1.ADOQuery3 do begin  //����������� ������� ����� � �������
   SQL.Clear;
   SQL.Add('select * from cqueue order by num');
   Open;
   end;
   with Form1.ADOQuery4 do begin  //�����������  ����� � �������
   SQL.Clear;
   SQL.Add('select * from cars order by num');
   Open;
   end;
 end
 else
 ShowMessage('����� ������ ��� ���� � �������!');
 end
 else
 ShowMessage('����� ������ ��� � ������� �����!');
end; }
Edit1.Text:='';
end;

procedure TForm1.N6Click(Sender: TObject);
begin  //����� ���� �� �������
   with ADOCommand1 do begin
  CommandText := 'UPDATE cars SET week=week+summa where num=:PNUM';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=DBGrid3.Fields[1].AsInteger;
  Execute;
  end;
   with ADOCommand1 do begin
  CommandText := 'DELETE FROM cqueue WHERE car=:PCAR';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=DBGrid3.Fields[1].AsInteger;
  Execute;
  end;
   with ADOQuery3 do begin  //����������� ������� ����� � �������
   SQL.Clear;
   SQL.Add('select * from cqueue order by num');
   Open;
   end;
   with ADOQuery4 do begin  //�����������  ����� � �������
   SQL.Clear;
   SQL.Add('select * from cars order by num');
   Open;
   end;
end;

procedure TForm1.N13Click(Sender: TObject);
begin  //��������� ������ � ������� �����
Application.CreateForm(TForm3, Form3);
Form3.Caption:='�������� ������';
Form3.Button1.Visible:=false;
Form3.ShowModal;
Form3.Free;
  {   with ADOCommand1 do begin       //������� ������ � ������� ������
  CommandText := 'select * from cars order by num'; //�������� ������ ��� ���� ������
  CommandType := cmdText;
  ADODataSet1.Recordset := Execute;
  end;
 if (ADODataSet1.RecordCount>0) then  begin
 ADODataSet1.Recordset.MoveLast;   //��������� ������ � �����
 NumCar:=ADODataSet1.Recordset.Fields[0].Value;
   with ADOCommand1 do begin
  CommandText := 'INSERT INTO cars (num,summa,week) VALUES(:PNUM,0,0)';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=NumCar;
  Execute;
  end;
 end; }
   with ADOCommand1 do begin       //������� ������ � ������� ������
  CommandText := 'select * from cars where num=:PNUM order by num'; //�������� ������ ��� ���� ������
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=StrToInt(Edit1.Text);
  ADODataSet1.Recordset := Execute;
  end;
  if (ADODataSet1.RecordCount=0) then  begin
   //ShowMessage('����� ������ ���');
    with ADOCommand1 do begin
  CommandText := 'INSERT INTO cars (num,summa,week) VALUES(:PNUM,0,0)';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=StrToInt(Edit1.Text);
  Execute;
  end;
  end
  else ShowMessage('����� ������ ��� ����!');
with ADOCommand1 do begin       //���������� ������� ���� �������
  CommandText := 'INSERT INTO zvonki ' +
    '(DAT,TIM,ADRES) ' +
    'VALUES (:PDAT,:PTIM,:PADRES)';
  CommandType := cmdText;
  Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',Now);
  Parameters.ParamByName('PTIM').Value:=FormatDateTime('hh:mm',Now);
  Parameters.ParamByName('PADRES').Value:='�������� '+IntToStr(Working)+' ��� ��� '+Edit1.Text;
  Execute;
  end;
   with ADOQuery4 do begin  //�����������  ����� � �������
   SQL.Clear;
   SQL.Add('select * from cars order by num');
   Open;
   end;
   with ADOQuery2 do begin  //�����������  ����� � �������
   SQL.Clear;
   SQL.Add('select num,telefon,kode,dat,tim,adres,car,beg,en,cost,priznak,zakaz from zvonki order by num');
   Open;
   end;
Edit1.Text:='';
end;

procedure TForm1.N14Click(Sender: TObject);
begin  //������� ������ �� ������� �����
with ADOCommand1 do begin       //���������� ������� ���� �������
  CommandText := 'INSERT INTO zvonki ' +'(DAT,TIM,ADRES) ' +
    'VALUES (:PDAT,:PTIM,:PADRES)';
  CommandType := cmdText;
  Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',Now);
  Parameters.ParamByName('PTIM').Value:=FormatDateTime('hh:mm',Now);
  Parameters.ParamByName('PADRES').Value:='�������� '+IntToStr(Working)+' ���� ��� '+DBGrid4.Fields[0].AsString;
  Execute;
  end;
with ADOCommand1 do begin       //���������� ������� ���� �������
  CommandText := 'DELETE FROM cars WHERE num=:PNUM';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=DBGrid4.Fields[0].AsInteger;
  Execute;
  end;
   with ADOQuery4 do begin  //�����������  ����� � �������
   SQL.Clear;
   SQL.Add('select * from cars order by num');
   Open;
   end;
   with ADOQuery2 do begin  //�����������  ������
   SQL.Clear;
   SQL.Add('select num,telefon,kode,dat,tim,adres,car,beg,en,cost,priznak,zakaz from zvonki order by num');
   Open;
   end;
end;

procedure TForm1.N15Click(Sender: TObject);
begin  //������ ���������
     with ADOCommand1 do begin       //������� ������ � ������� ������� �����
  CommandText := 'select * from cars where num=:PCAR'; //�������� ������ ��� ����� ����������
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=DBGrid4.Fields[0].AsInteger;
  ADODataSet1.Recordset := Execute;
  end;
 if (ADODataSet1.RecordCount>0) then  begin
 //ShowMessage('����� ������ ����!!!');
with ADOCommand1 do begin       //���������� ������� ���� �������
  CommandText := 'INSERT INTO zvonki ' +'(DAT,TIM,ADRES) ' +
    'VALUES (:PDAT,:PTIM,:PADRES)';
  CommandType := cmdText;
  Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',Now);
  Parameters.ParamByName('PTIM').Value:=FormatDateTime('hh:mm',Now);
  Parameters.ParamByName('PADRES').Value:='���� '+IntToStr(Working)+' ����� ��� ��� '+DBGrid4.Fields[0].AsString;
  Execute;
  end;
   with ADOCommand1 do begin
  CommandText := 'UPDATE cars SET week=0 where num=:PNUM';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=DBGrid4.Fields[0].AsInteger;
  Execute;
  end;
 end
 else ShowMessage('����� ������ ���!');
   with ADOQuery4 do begin  //�����������  ����� � �������
   SQL.Clear;
   SQL.Add('select * from cars order by num');
   Open;
   end;
   with ADOQuery2 do begin  //�����������  ������
   SQL.Clear;
   SQL.Add('select num,telefon,kode,dat,tim,adres,car,beg,en,cost,priznak,zakaz from zvonki order by num');
   Open;
   end;
end;

procedure TForm1.N16Click(Sender: TObject);
begin  // ���� �������� ����������
Application.CreateForm(TForm3, Form3);
Form3.Caption:='�������� ����������';
Form3.LabeledEdit1.EditLabel.Caption:='����� ����� ����������';
Form3.Button2.Visible:=false;
Form3.ShowModal;
Form3.Free;
//ShowMessage(Edit1.Text);
if Length(Edit1.Text)>0 then begin
//ShowMessage(Edit1.Text);
   with ADOCommand1 do begin       //������� ������ � ������� ������
  CommandText := 'select * from disp where num=:PNUM '; //�������� ������ ��� ���� ������
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=StrToInt(Edit1.Text);
  ADODataSet1.Recordset := Execute;
  end;
  if (ADODataSet1.RecordCount=0) then  begin
  //ShowMessage('���� ����� ���������!');
  with ADOCommand1 do begin       //���������� ������� ���� �������
  CommandText := 'INSERT INTO disp ' +'(NUM,DAY,WEEK) ' +
    'VALUES (:PNUM,:PDAY,:PWEEK)';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=StrToInt(Edit1.Text);
  Parameters.ParamByName('PDAY').Value:=0;
  Parameters.ParamByName('PWEEK').Value:=0;
  Execute;
  end;
  end
  else ShowMessage('���� ����� ���������!');
end
else ShowMessage('�� ����� ����������!');
   with ADOQuery5 do begin  //�����������  ����������� � �������
   SQL.Clear;
   SQL.Add('select * from disp order by num');
   Open;
   end;
end;

procedure TForm1.N17Click(Sender: TObject);
begin   //���� ������� ����������
     with ADOCommand1 do begin       //������� ������ � ������� ����������
  CommandText := 'select * from disp where num=:PNUM';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=DBGrid5.Fields[0].AsInteger;
  ADODataSet1.Recordset := Execute;
  end;
 if (ADODataSet1.RecordCount>0) then  begin
  with ADOCommand1 do begin       //�������� ������
  CommandText := 'DELETE FROM disp WHERE num=:PNUM';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=DBGrid5.Fields[0].AsInteger;
  Execute;
  end;
 end
 else ShowMessage('��������� ��� ������!');
   with ADOQuery5 do begin  //�����������  ����������� � �������
   SQL.Clear;
   SQL.Add('select * from disp order by num');
   Open;
   end;
end;

procedure TForm1.N18Click(Sender: TObject);
begin   //���� ������� �����
     with ADOCommand1 do begin       //������� ������ � ������� ����������
  CommandText := 'select * from disp where num=:PNUM';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=DBGrid5.Fields[0].AsInteger;
  ADODataSet1.Recordset := Execute;
  end;
 if (ADODataSet1.RecordCount>0) then  begin
  with ADOCommand1 do begin       //������� ������ � ������� ����������
  CommandText := 'select * from disp where working=1';
  CommandType := cmdText;
  //Parameters.ParamByName('PWORKING').Value:=DBGrid5.Fields[0].AsInteger;
  ADODataSet1.Recordset := Execute;
  end;
 if (ADODataSet1.RecordCount=0) then  begin
 Working:=DBGrid5.Fields[0].AsInteger;
  with ADOCommand1 do begin       // ������� � ������� �������
  CommandText := 'INSERT INTO zvonki ' +'(DAT,TIM,ADRES) ' +
    'VALUES (:PDAT,:PTIM,:PADRES)';
  CommandType := cmdText;
  Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',Now);
  Parameters.ParamByName('PTIM').Value:=FormatDateTime('hh:mm',Now);
  Parameters.ParamByName('PADRES').Value:='���� '+DBGrid5.Fields[0].AsString+' ������ �����';
  Execute;
  end;
   with ADOCommand1 do begin
  CommandText := 'UPDATE disp SET day=0 where num=:PNUM';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=DBGrid5.Fields[0].AsInteger;
  Execute;
  end;
  with ADOCommand1 do begin
  CommandText := 'UPDATE disp SET working=1 where num=:PNUM';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=DBGrid5.Fields[0].AsInteger;
  Execute;
  end;
  ClientSocket1.Socket.SendText(Priority+'CHDISP');
 end
 else ShowMessage('���� ��������� ��� �� �����!');
 end
 else ShowMessage('������ ���������� �� ����������!!');
   with ADOQuery5 do begin  //�����������  ����������� � �������
   SQL.Clear;
   SQL.Add('select * from disp order by num');
   Open;
   end;
   with ADOQuery2 do begin  //�����������  ������� � �������
   SQL.Clear;
   SQL.Add('select num,telefon,kode,dat,tim,adres,car,beg,en,cost,priznak,zakaz from zvonki order by num');
   Open;
   end;


end;

procedure TForm1.N19Click(Sender: TObject);
begin     //���� ����� �����
  with ADOCommand1 do begin       //������� ������ � ������� ����������
  CommandText := 'select * from disp where num=:PNUM';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=DBGrid5.Fields[0].AsInteger;
  ADODataSet1.Recordset := Execute;
  end;
 if (ADODataSet1.RecordCount>0) then  begin
   if ADODataSet1.Recordset.Fields[3].Value =1 then begin
 Working:=0;
  with ADOCommand1 do begin       // ������� � ������� �������
  CommandText := 'INSERT INTO zvonki ' +'(DAT,TIM,ADRES) ' +
    'VALUES (:PDAT,:PTIM,:PADRES)';
  CommandType := cmdText;
  Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',Now);
  Parameters.ParamByName('PTIM').Value:=FormatDateTime('hh:mm',Now);
  Parameters.ParamByName('PADRES').Value:='���� '+DBGrid5.Fields[0].AsString+' ���� �����';
  Execute;
  end;
   with ADOCommand1 do begin
  CommandText := 'UPDATE disp SET week=week+day where num=:PNUM';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=DBGrid5.Fields[0].AsInteger;
  Execute;
  end;
   with ADOCommand1 do begin
  CommandText := 'UPDATE disp SET working=0 where num=:PNUM';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=DBGrid5.Fields[0].AsInteger;
  Execute;
  end;
  end
  else ShowMessage('���� ��������� �� �� �����!');
 end
 else ShowMessage('������ ���������� �� ����������!!');
   with ADOQuery5 do begin  //�����������  ����������� � �������
   SQL.Clear;
   SQL.Add('select * from disp order by num');
   Open;
   end;
   with ADOQuery2 do begin  //�����������  ������� � �������
   SQL.Clear;
   SQL.Add('select num,telefon,kode,dat,tim,adres,car,beg,en,cost,priznak,zakaz from zvonki order by num');
   Open;
   end;
end;

procedure TForm1.N20Click(Sender: TObject);
begin  //���� ��������� ������ ����������
  with ADOCommand1 do begin       //������� ������ � ������� ����������
  CommandText := 'select * from disp where num=:PNUM';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=DBGrid5.Fields[0].AsInteger;
  ADODataSet1.Recordset := Execute;
  end;
 if (ADODataSet1.RecordCount>0) then  begin
  with ADOCommand1 do begin       // ������� � ������� �������
  CommandText := 'INSERT INTO zvonki ' +'(DAT,TIM,ADRES) ' +
    'VALUES (:PDAT,:PTIM,:PADRES)';
  CommandType := cmdText;
  Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',Now);
  Parameters.ParamByName('PTIM').Value:=FormatDateTime('hh:mm',Now);
  Parameters.ParamByName('PADRES').Value:='���� '+IntToStr(Working)+' ����� ��� ��-�� '+DBGrid5.Fields[0].AsString;
  Execute;
  end;
   with ADOCommand1 do begin
  CommandText := 'UPDATE disp SET week=0 where num=:PNUM';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=DBGrid5.Fields[0].AsInteger;
  Execute;
  end;
 end
 else ShowMessage('������ ���������� �� ����������!!');
   with ADOQuery5 do begin  //�����������  ����������� � �������
   SQL.Clear;
   SQL.Add('select * from disp order by num');
   Open;
   end;
   with ADOQuery2 do begin  //�����������  ������� � �������
   SQL.Clear;
   SQL.Add('select num,telefon,kode,dat,tim,adres,car,beg,en,cost,priznak,zakaz from zvonki order by num');
   Open;
   end;
end;

procedure TForm1.N21Click(Sender: TObject);
begin  //���� ������ � ����������
Application.CreateForm(TForm4, Form4);
Form4.ShowModal;
Form4.Free;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
ClientSocket1.Socket.SendText(Priority+'END');
end;

procedure TForm1.PageControl1Change(Sender: TObject);
begin  //������������� ����� ����������
//ShowMessage(IntToStr(PageControl1.ActivePageIndex));
case PageControl1.ActivePageIndex of
0 : begin //���������� ������� � ������� �����
   with ADOQuery1 do begin  //����������� ������� ����� � �������
   SQL.Clear;
   SQL.Add('select zakaz,telefon,kode,dat,tim,adres,car,beg,en,place_end,cost,priznak,predvar,working,uvedomlen,vip from zakazi order by zakaz');
   Open;
   end;
   with ADOQuery3 do begin  //����������� ������� ����� � �������
   SQL.Clear;
   SQL.Add('select * from cqueue order by num');
   Open;
   end;
end;
1 : begin  //���������� ������� �������
   with ADOQuery2 do begin  //����������� �������
   SQL.Clear;
   SQL.Add('select num,telefon,kode,dat,tim,adres,car,beg,en,cost,priznak,zakaz from zvonki where (num > (select MAX(num) from zvonki) - 500) order by num');
   Open;

   DBGrid2.DataSource.DataSet.MoveBy(DBGrid2.DataSource.DataSet.RecordCount-1); //����������� ���������� �����
   end;
end;
2: begin
//���������� ���� day � ������� disp
     with ADOCommand1 do begin
  CommandText := 'select * from zvonki where adres like '+ '''%'+'������ �����''';
  CommandType := cmdText;
  ADODataSet1.Recordset := Execute;
  end;
 if (ADODataSet1.RecordCount>0) then  begin
 ADODataSet1.Last;
 //ShowMessage(DateToStr(ADODataSet1.Recordset.Fields[3].Value));
 //ShowMessage(TimeToStr(ADODataSet1.Recordset.Fields[4].Value));
     with ADOCommand1 do begin
   CommandText := 'update disp set day=(select coalesce(sum(cost),0.00) from zvonki where dat+tim>='''+ FormatDateTime('yyyy-mm-dd',ADODataSet1.Recordset.Fields[3].Value)+
   ' '+FormatDateTime('hh:mm',ADODataSet1.Recordset.Fields[4].Value)+''') where working=1';
 // CommandText := 'select sum(cost) from zvonki where dat>='''+FormatDateTime('yyyy-mm-dd',ADODataSet1.Recordset.Fields[3].Value)+''';
  //Parameters.ParamByName('PDAT').Value:=FormatDateTime('yyyy-mm-dd',ADODataSet1.Recordset.Fields[3].Value);
  //Parameters.ParamByName('PTIM').Value:=FormatDateTime('hh:mm',ADODataSet1.Recordset.Fields[4].Value);
  CommandType := cmdText;
  Execute;
  end;
  {Log.Clear;
  Log.Lines.Add('update disp set day=(select sum(cost) from zvonki where dat+tim>='''+ FormatDateTime('yyyy-mm-dd',ADODataSet1.Recordset.Fields[3].Value)+
   ' '+FormatDateTime('hh:mm',ADODataSet1.Recordset.Fields[4].Value)+''') where working=1');}
 end;
   with ADOQuery4 do begin  //����������� �����
   SQL.Clear;
   SQL.Add('select * from cars order by num');
   Open;
   end;
   with ADOQuery5 do begin  //����������� �����������
   SQL.Clear;
   SQL.Add('select * from disp order by num');
   Open;
   end; 
end;
end;

end;

procedure TForm1.N22Click(Sender: TObject);
begin  //��������� ��������� ���� �� �������� ������
 ShellExecute(Handle,nil,'report.bat',nil,nil,SW_RESTORE);
 ShowMessage('���� ������ C:/report.txt');
end;

procedure TForm1.Timer2Timer(Sender: TObject);
var
  Present: TDateTime;
  Zak : TDateTime;
   Hour, Min, Sec, MSec : Word;
   HourZ, MinZ, SecZ, MSecZ : Word;
begin    //��������� ��������������� �������
 with ADOCommand1 do begin       //���� �� ��������������� �����
  CommandText := 'SELECT * FROM zakazi ' +
    'WHERE predvar = :PPREDVAR';
  CommandType := cmdText;
  Parameters.ParamByName('PPREDVAR').Value := 'YES';
  ADODataSet1.Recordset := Execute;
end;


if ADODataSet1.RecordCount>0 then begin  //���� ���� ��������������� �����
ADODataSet1.Recordset.MoveFirst;
//� ����� ��������� ���� �������� ����� -  �������� ������
Present:= Now;
DecodeTime(Present, Hour, Min, Sec, MSec);
  while (not ADODataSet1.Recordset.EOF) do begin
  Zak:=ADODataSet1.Recordset.Fields[4].Value;
  DecodeTime(Zak, HourZ, MinZ, SecZ, MSecZ);
//if (ADODataSet1.Recordset.Fields[13].Value = 'YES')  then begin    end;
  if (HourZ-Hour=0) and (MinZ-Min<15) and (MinZ-Min>0) then begin
  //ShowMessage('���� ��������������� ��������');
  PlaySound('SOUND528.wav',0,SND_ASYNC);
  flag_predv:=1;
  end
  else begin
    flag_predv:=0;
  end;
  if (HourZ-Hour=1) and (MinZ-Min<-45)  then begin
  //ShowMessage('���� ��������������� ��������');
  PlaySound('SOUND528.wav',0,SND_ASYNC);
  flag_predv:=1;
  end
  else begin
    flag_predv:=0;
  end;
  if (HourZ-Hour=-23) and (MinZ-Min<-45)  then begin
  //ShowMessage('���� ��������������� ��������');
  PlaySound('SOUND528.wav',0,SND_ASYNC);
  flag_predv:=1;
  end
  else begin
    flag_predv:=0;
  end;
  ADODataSet1.Recordset.MoveNext;
  end;


end;



end;

procedure TForm1.N23Click(Sender: TObject);
begin  //������� �� ���������
Application.CreateForm(TForm5, Form5);
Form5.ShowModal;
Form5.Free;
   with ADOQuery2 do begin  //����������� �������
   SQL.Clear;
   SQL.Add('select num,telefon,kode,dat,tim,adres,car,beg,en,cost,priznak,zakaz from zvonki where (num > (select MAX(num) from zvonki) - 100) order by num');
   Open;
   end;
   DBGrid2.DataSource.DataSet.MoveBy(DBGrid2.DataSource.DataSet.RecordCount-1); //����������� ���������� �����
end;

procedure TForm1.LabeledEdit4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  Txt: string;
  slstrt : integer;
  quo : string;
  zapr : string;
begin
if (ADDLETTERS=1) then begin
  quo:= '''';
case Key of  //������� �� ���� "�����"
186,188,190,219,221,222,65..90 : begin
 slstrt:=LabeledEdit4.SelStart;

 zapr:= 'SELECT street FROM streets where street like ''' + LabeledEdit4.Text + '%''';
 //ShowMessage(zapr);
 with ADOCommand1 do begin       //���� �� ����� ��� � ������� ����
  CommandText := zapr;
  CommandType := cmdText;
  //Parameters.ParamByName('PKODE').Value := LabeledEdit4.Text;
  ADODataSet1.Recordset := Execute;
end;

if (ADODataSet1.RecordCount>0)  then begin
ADODataSet1.Recordset.MoveFirst;  //������������ �� ����������
LabeledEdit4.Text:=ADODataSet1.Recordset.Fields[0].Value;
LabeledEdit4.SelStart:= slstrt;
LabeledEdit4.SelLength:=  Length(LabeledEdit4.Text)- slstrt;
end;

end;
VK_DOWN : begin
 if ADODataSet1.Recordset.RecordCount>0 then begin
  //ShowMessage(IntToStr(ADODataSet1.Recordset.RecordCount));
  ADODataSet1.Next;
  if ADODataSet1.Recordset.EOF<>true then begin
   //PerfomRecSet(Sred)
    LabeledEdit4.Text:=ADODataSet1.Recordset.Fields[0].Value;
    LabeledEdit4.SelStart:= slstrt;
    LabeledEdit4.SelLength:=  Length(LabeledEdit4.Text)- slstrt;
   end
  else ShowMessage('��������� ������!');
 end
 else ShowMessage('������� �� �������');
end;
VK_UP : begin
 if ADODataSet1.Recordset.RecordCount>0 then begin
  ADODataSet1.Prior;
  if ADODataSet1.Recordset.BOF<>true then begin
   //PerfomRecSet(Sred)
    LabeledEdit4.Text:=ADODataSet1.Recordset.Fields[0].Value;
    LabeledEdit4.SelStart:= slstrt;
    LabeledEdit4.SelLength:=  Length(LabeledEdit4.Text)- slstrt;
   end
  else ShowMessage('������ ������!');
 end
 else ShowMessage('������� �� �������');
end;
VK_RIGHT : begin
 LabeledEdit4.Text := LabeledEdit4.Text + ' ';
 With LabeledEdit4 do SelStart:=Length(Text);
end;
end;
end;


end;

procedure TForm1.N24Click(Sender: TObject);
begin   //����� �� ������
 Application.CreateForm(TForm6, Form6);
 Form6.ShowModal;
 Form6.Free;
 Log.Lines.SaveToFile('report_smena.sql');
  ShellExecute(Handle,nil,'report2.bat',nil,nil,SW_RESTORE);
 ShowMessage('���� ������ C:/report2.txt');
end;

procedure TForm1.N25Click(Sender: TObject);
begin //���������� �� ����������
with ADOCommand1 do begin       //��������� ���� state
  CommandText := 'UPDATE cqueue SET state=4 ' +
    'WHERE car=:PCAR';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=DBGrid3.Fields[1].AsInteger;
  Execute;
  end;
  with ADOQuery3 do begin  //����������� �� � �������
SQL.Clear;
SQL.Add('select * from cqueue order by num');
Open;
end;
end;

procedure TForm1.N26Click(Sender: TObject);
begin  //���������� �� ��������
with ADOCommand1 do begin       //��������� ���� state
  CommandText := 'UPDATE cqueue SET state=5 ' +
    'WHERE car=:PCAR';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=DBGrid3.Fields[1].AsInteger;
  Execute;
  end;
  with ADOQuery3 do begin  //����������� �� � �������
SQL.Clear;
SQL.Add('select * from cqueue order by num');
Open;
end;
end;

procedure TForm1.N27Click(Sender: TObject);
begin   //���������� �� �����
with ADOCommand1 do begin       //��������� ���� state
  CommandText := 'UPDATE cqueue SET state=6 ' +
    'WHERE car=:PCAR';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=DBGrid3.Fields[1].AsInteger;
  Execute;
  end;
  with ADOQuery3 do begin  //����������� �� � �������
SQL.Clear;
SQL.Add('select * from cqueue order by num');
Open;
end;
end;

procedure TForm1.N28Click(Sender: TObject);
begin   //���������� �� �/�������
with ADOCommand1 do begin       //��������� ���� state
  CommandText := 'UPDATE cqueue SET state=7 ' +
    'WHERE car=:PCAR';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=DBGrid3.Fields[1].AsInteger;
  Execute;
  end;
  with ADOQuery3 do begin  //����������� �� � �������
SQL.Clear;
SQL.Add('select * from cqueue order by num');
Open;
end;
end;

procedure TForm1.N29Click(Sender: TObject);
begin  //���������� �� ��� �������
with ADOCommand1 do begin       //��������� ���� state
  CommandText := 'UPDATE cqueue SET state=8 ' +
    'WHERE car=:PCAR';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=DBGrid3.Fields[1].AsInteger;
  Execute;
  end;
  with ADOQuery3 do begin  //����������� �� � �������
SQL.Clear;
SQL.Add('select * from cqueue order by num');
Open;
end;
end;

procedure TForm1.N30Click(Sender: TObject);
begin  //���������� �� ���������
with ADOCommand1 do begin       //��������� ���� state
  CommandText := 'UPDATE cqueue SET state=9 ' +
    'WHERE car=:PCAR';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=DBGrid3.Fields[1].AsInteger;
  Execute;
  end;
  with ADOQuery3 do begin  //����������� �� � �������
SQL.Clear;
SQL.Add('select * from cqueue order by num');
Open;
end;
end;

procedure TForm1.N31Click(Sender: TObject);
begin //���������� �� �/�������
with ADOCommand1 do begin       //��������� ���� state
  CommandText := 'UPDATE cqueue SET state=10 ' +
    'WHERE car=:PCAR';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=DBGrid3.Fields[1].AsInteger;
  Execute;
  end;
  with ADOQuery3 do begin  //����������� �� � �������
SQL.Clear;
SQL.Add('select * from cqueue order by num');
Open;
end;
end;

procedure TForm1.ObnovStringGrig(StrGrd1 : integer);
var ColGrd : integer;
    RowGrd, CntPoint, CntCol : integer;
    //ArrStrGrd : array[0..100,0..100] of integer;
    LVar : OleVariant;
begin //refresh stringgrid1
 CntCol:=7;
 ColGrd:=0;
 RowGrd:=0;  //�������������� ������
   for ColGrd:=0 to 100 do begin
   // for RowGrd:=0 to 100 do ArrStrGrd[ColGrd,RowGrd]:=0;
     for RowGrd:=0 to 100 do begin
      ArrayStrGrd3[ColGrd,RowGrd,0]:=0;
      ArrayStrGrd3[ColGrd,RowGrd,1]:=0;
     end;
   end;


//---------------���������� ������-----------------------
for CntPoint :=0 to 11 do begin
//������� ���������� ���������� ����� � �������
with ADOCommand1 do begin
   ADOCommand1.CommandText := 'select count(*) from point_queues where point_id=:PPI';
   ADOCommand1.CommandType := cmdText;
   Parameters.ParamByName('PPI').Value:=CntPoint;
   ADODataSet1.Recordset := Execute;
   end;
   ADODataSet1.First;
  LVar:=ADODataSet1.Recordset.Fields[0].Value; //�������� �� OLEVariant � INT
  if StrToInt(VarToStr(LVar)) > CntCol then CntCol:= StrToInt(VarToStr(LVar));

//�������� ������ �� ������
with ADOCommand1 do begin
   ADOCommand1.CommandText := 'select * from point_queues where point_id=:PPI order by created_at';
   ADOCommand1.CommandType := cmdText;
   Parameters.ParamByName('PPI').Value:=CntPoint;
   ADODataSet1.Recordset := Execute;
   end;
   ADODataSet1.First;
   // ShowMessage(IntToStr(ADODataSet1.Recordset.Fields[2].Value));
if (ADODataSet1.RecordCount>0)  then begin
 ColGrd:=0;
  while ADODataSet1.Recordset.EOF<>true do begin
    if ADODataSet1.Recordset.Fields[1].Value<>NULL then  begin //row
    RowGrd:=ADODataSet1.Recordset.Fields[1].Value;
    ArrayStrGrd3[ColGrd,RowGrd,0]:=ADODataSet1.Recordset.Fields[2].Value;
    ArrayStrGrd3[ColGrd,RowGrd,1]:=ADODataSet1.Recordset.Fields[3].Value;
    ColGrd:= ColGrd+1;
    end;
    ADODataSet1.Next;
  end;
end;
end;
StringGrid1.ColCount:= CntCol;
//--------��������� StringGrid ���������� �� �������-------------
   for ColGrd:=0 to StringGrid1.ColCount do begin
    for RowGrd:=0 to StringGrid1.RowCount do begin
    if (ArrayStrGrd3[ColGrd,RowGrd,0]>0) then
    StringGrid1.Cells[ColGrd,RowGrd]:=IntToStr(ArrayStrGrd3[ColGrd,RowGrd,0])
    else
    StringGrid1.Cells[ColGrd,RowGrd]:='';
    end;
   end;
//������ ��������� ��������
for ColGrd:=1 to StringGrid1.ColCount do begin
StringGrid1.Cells[ColGrd-1,12]:=IntToStr(ColGrd);
end;

end;

procedure TForm1.StringGrid1Click(Sender: TObject);
//var NewCol : integer;
begin
{if (StGrClDbl<>0) then begin
   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'select COUNT(col) from cqueue where row=:PNEWROW';
   ADOCommand1.CommandType := cmdText;
   Parameters.ParamByName('PNEWROW').Value:=StrGrdRow;
   ADODataSet1.Recordset := Execute;
   end;
   ADODataSet1.First;
 if (ADODataSet1.Recordset.Fields[0].Value<>NULL) then begin
 NewCol:=ADODataSet1.Recordset.Fields[0].Value;
 end
 else begin
 NewCol:=0;
 end;
 ShowMessage(IntToStr(NewCol));
end;
StringGrid1.Cursor:=crDefault;
ObnovStringGrig(1);}
end;

procedure TForm1.N32Click(Sender: TObject);
var RecCnt : integer;
begin   //� �������
Application.CreateForm(TForm3, Form3);
Form3.Caption:='� �������';
Form3.Button2.Visible:=false;
Form3.ShowModal;
Form3.Free;

   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'select * from point_queues where car=:PCAR';
   ADOCommand1.CommandType := cmdText;
   Parameters.ParamByName('PCAR').Value:=StrToInt(Edit1.Text);
   ADODataSet1.Recordset := Execute;
   end;
  if (ADODataSet1.RecordCount=0) then  begin

with ADOCommand1 do begin
  CommandText := 'INSERT INTO point_queues (point_id,car,state,created_at,updated_at) VALUES (0,:PCAR,0,NOW(),NOW())';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=StrToInt(Edit1.Text);
  Execute;
end;  
ObnovStringGrig(1);
  end
  else ShowMessage('� ������� ���� ����� ������!');

end;

procedure TForm1.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
  var NewCol: integer;
  LVar : OleVariant;
begin
StrGrdRow:=ARow;
StrGrdCol:=ACol;
if (StringGrid1.Cells[StrGrdCol,StrGrdRow]<>'')  then begin
StrGrdCel:=StrToInt(StringGrid1.Cells[StrGrdCol,StrGrdRow]);
end
else StrGrdCel:=0;

if (StringGrid1.Cursor=crHandPoint) then begin
//ShowMessage('�����!');
if (StGrClDbl<>0) then begin

     if (StGrRwDbl<>StrGrdRow) then begin //���� �� �� �� ������
   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'select COUNT(col) from cqueue where row=:PNEWROW';
   ADOCommand1.CommandType := cmdText;
   Parameters.ParamByName('PNEWROW').Value:=StrGrdRow;
   ADODataSet1.Recordset := Execute;
   end;
   ADODataSet1.First;
   //------------------------------------------------------------------
   LVar:=ADODataSet1.Recordset.Fields[0].Value; //�������� �� OLEVariant � STRING
 //  ShowMessage(VarToStr(LVar));
   //------------------------------------------------------------------
    if (VarToStr(LVar)<>'0') then begin
//     Col2:= StrToInt(VarToStr(LVar));
//   if (ADODataSet1.Recordset.Fields[0].Value<>NULL) then begin
// if (ADODataSet1.Recordset.Fields[0].Value<>NULL) then begin
// NewCol:=ADODataSet1.Recordset.Fields[0].Value;
   NewCol:=StrToInt(VarToStr(LVar));
 end
 else begin
 NewCol:=0;
 end;

     with ADOCommand1 do begin
     ADOCommand1.CommandText := 'select COUNT(col) from cqueue where row=:PROW2 and col=:PCOL2';
     ADOCommand1.CommandType := cmdText;
     Parameters.ParamByName('PROW2').Value:=StrGrdRow;
     Parameters.ParamByName('PCOL2').Value:=NewCol;
     ADODataSet1.Recordset := Execute;
     end;
     ADODataSet1.First;
   //------------------------------------------------------------------
   LVar:=ADODataSet1.Recordset.Fields[0].Value; //�������� �� OLEVariant � STRING
 //  ShowMessage(VarToStr(LVar));
   //------------------------------------------------------------------
    if (StrToInt(VarToStr(LVar))=0) then begin
//     Col2:= StrToInt(VarToStr(LVar));
//      if (ADODataSet1.Recordset.Fields[0].Value = 0) then begin
// ShowMessage(IntToStr(NewCol));
{   with ADOCommand1 do begin
  CommandText := 'INSERT INTO cqueue (car,row,col) VALUES (:PCAR,:PROW,:PCOL)';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=StGrClDbl;
  Parameters.ParamByName('PROW').Value:=StrGrdRow;
  Parameters.ParamByName('PCOL').Value:=NewCol;
  Execute;
  end;
   with ADOCommand1 do begin
  CommandText := 'delete from cqueue where car=:PCAR and row=:PROW';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=StGrClDbl;
  Parameters.ParamByName('PROW').Value:=StGrRwDbl;
  Execute;
  end; }

   with ADOCommand1 do begin
  CommandText := 'update cqueue set col=:PCOL,row=:PROW where car=:PCAR';
  CommandType := cmdText;
  Parameters.ParamByName('PROW').Value:=StrGrdRow;
  Parameters.ParamByName('PCOL').Value:=NewCol;
  Parameters.ParamByName('PCAR').Value:=StGrClDbl;
  Execute;
  SaveInFl('OnSelectCell '+ADOCommand1.CommandText+';'+IntToStr(NewCol)+';'+IntToStr(StrGrdRow)+';'+IntToStr(StGrClDbl));
  end;

   with ADOCommand1 do begin
  CommandText := 'update cqueue set col=col-1 where row=:PROW and col>:PCOL';
  CommandType := cmdText;
  Parameters.ParamByName('PROW').Value:=StGrRwDbl;
  Parameters.ParamByName('PCOL').Value:=StGrCoDbl;
  Execute;
  end;
//ClientSocket1.Socket.SendText(Priority+'REFRESH');
idHTTP1.Get(RemoteHost+'/api/' + LogPswSrw + '/reforders');
       end

       else begin
       ShowMessage('������ ������!');
       end;
    end
    else begin
    ShowMessage('����� ������ ���� �� ���� �������!');
    end;
end;
StringGrid1.Cursor:=crDefault;
DyrkamNet2(StrGrdRow);
ObnovStringGrig(1);
end;

end;

procedure TForm1.N33Click(Sender: TObject);
begin  //�� �������
  with ADOCommand1 do begin
  CommandText := 'delete from point_queues where car=:PCAR';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=StrGrdCel;
  Execute;
  end;
ObnovStringGrig(1);

end;

procedure TForm1.N34Click(Sender: TObject);
var
 params : TStringList;
 LgPs : String;
 resp : string;
begin  //������ � �������
  { with ADOCommand1 do begin
  CommandText := 'update point_queues set state=1 where car=:PCAR';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=StrGrdCel;
  Execute;
  end;  }
    with ADOCommand1 do begin
    ADOCommand1.CommandText := 'select login,   password, car from users where car=:PCAR';
    ADOCommand1.CommandType := cmdText;
    Parameters.ParamByName('PCAR').Value:=StrGrdCel;
    ADODataSet1.Recordset := Execute;
    end;
    ADODataSet1.First;
    if (ADODataSet1.Recordset.Fields[0].Value<>NULL) then begin
    LgPs:=ADODataSet1.Recordset.Fields[0].Value + '/' + ADODataSet1.Recordset.Fields[1].Value;
    end
    else LgPs:='';
    //-----------------------
    params:=TStringList.Create;
    params.Add('car=' + IntToStr(StrGrdCel));
    params.Add('state=' + '1');
    resp:=idHTTP1.Post(RemoteHost+'/api/' + LgPs + '/stateupd',params);
    params.Free;
ObnovStringGrig(1);
idHTTP1.Get(RemoteHost+'/api/' + LogPswSrw + '/reforders');
end;

procedure TForm1.N35Click(Sender: TObject);
var
 params : TStringList;
 LgPs : String;
 resp : string;
begin  //������ � ����� ����
 {  with ADOCommand1 do begin
  CommandText := 'update point_queues set state=2 where car=:PCAR';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=StrGrdCel;
  Execute;
  end;  }
    with ADOCommand1 do begin
    ADOCommand1.CommandText := 'select login,   password, car from users where car=:PCAR';
    ADOCommand1.CommandType := cmdText;
    Parameters.ParamByName('PCAR').Value:=StrGrdCel;
    ADODataSet1.Recordset := Execute;
    end;
    ADODataSet1.First;
    if (ADODataSet1.Recordset.Fields[0].Value<>NULL) then begin
    LgPs:=ADODataSet1.Recordset.Fields[0].Value + '/' + ADODataSet1.Recordset.Fields[1].Value;
    end
    else LgPs:='';
    //-----------------------
    params:=TStringList.Create;
    params.Add('car=' + IntToStr(StrGrdCel));
    params.Add('state=' + '2');
    resp:=idHTTP1.Post(RemoteHost+'/api/' + LgPs + '/stateupd',params);
    params.Free;
    //Showmessage(resp);
ObnovStringGrig(1);
idHTTP1.Get(RemoteHost+'/api/' + LogPswSrw + '/reforders');
end;

procedure TForm1.N36Click(Sender: TObject);
var
 params : TStringList;
 LgPs : String;
 resp : string;
begin  //������ � ������ ����
{   with ADOCommand1 do begin
  CommandText := 'update point_queues set state=3 where car=:PCAR';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=StrGrdCel;
  Execute;
  end;  }
      with ADOCommand1 do begin
    ADOCommand1.CommandText := 'select login,   password, car from users where car=:PCAR';
    ADOCommand1.CommandType := cmdText;
    Parameters.ParamByName('PCAR').Value:=StrGrdCel;
    ADODataSet1.Recordset := Execute;
    end;
    ADODataSet1.First;
    if (ADODataSet1.Recordset.Fields[0].Value<>NULL) then begin
    LgPs:=ADODataSet1.Recordset.Fields[0].Value + '/' + ADODataSet1.Recordset.Fields[1].Value;
    end
    else LgPs:='';
    //-----------------------
    params:=TStringList.Create;
    params.Add('car=' + IntToStr(StrGrdCel));
    params.Add('state=' + '3');
    resp:=idHTTP1.Post(RemoteHost+'/api/' + LgPs + '/stateupd',params);
    params.Free;
ObnovStringGrig(1);
idHTTP1.Get(RemoteHost+'/api/' + LogPswSrw + '/reforders');
end;

procedure TForm1.PerestavCarStrGrid(NewRowStrGrd : integer);
var NewCol : integer;
    NewRow : integer;
    LVar : OleVariant;
begin  //��o������ ������������ ���������� � StringGrid1
   with ADOCommand1 do begin       //������� ����� � ������� ��������� ������
  CommandText := 'select car,row,col from cqueue where car=:PCAR';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=StrGrdCel;
  ADODataSet1.Recordset := Execute;
  end;
StrGrdRow:=ADODataSet1.Recordset.Fields[1].Value;
StrGrdCol:=ADODataSet1.Recordset.Fields[2].Value;
   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'select COUNT(col) from cqueue where row=:PNEWROW';
   ADOCommand1.CommandType := cmdText;
   Parameters.ParamByName('PNEWROW').Value:=NewRowStrGrd;
   ADODataSet1.Recordset := Execute;
   end;
   ADODataSet1.First;
   //------------------------------------------------------------------
   LVar:=ADODataSet1.Recordset.Fields[0].Value; //�������� �� OLEVariant � STRING
     if (VarToStr(LVar)<>'0') then begin
//      if (ADODataSet1.Recordset.Fields[0].Value = 0) then begin  //1 beg
// if (ADODataSet1.Recordset.Fields[0].Value<>NULL) then begin
// NewCol:=ADODataSet1.Recordset.Fields[0].Value;
   NewCol:=StrToInt(VarToStr(LVar));
 end
 else begin
 NewCol:=0;
 end;
 if (StrGrdCel<>0) then begin
 NewRow:=NewRowStrGrd;
 //ShowMessage('StrGrdCol='+IntToStr(StrGrdCol));


   with ADOCommand1 do begin
  CommandText := 'update cqueue set col=:PCOL,row=:PROW where car=:PCAR';
  CommandType := cmdText;
  Parameters.ParamByName('PROW').Value:=NewRow;
  Parameters.ParamByName('PCOL').Value:=NewCol;
  Parameters.ParamByName('PCAR').Value:=StrGrdCel;
  Execute;
  end;

   with ADOCommand1 do begin
  CommandText := 'update cqueue set col=col-1 where row=:PROW and col>:PCOL';
  CommandType := cmdText;
  Parameters.ParamByName('PROW').Value:=StrGrdRow;
  Parameters.ParamByName('PCOL').Value:=StrGrdCol;
  Execute;
  end;
  DyrkamNet2(NewRowStrGrd);
 end
 else ShowMessage('������ �� �������!');
ObnovStringGrig(1);
end;

procedure TForm1.N37Click(Sender: TObject);
begin  //��������� �� �����
// if SipPhoneSt = 0 then begin
 if MessageDlg('��������� �� ����� ' + NumTelefClick + ' ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
 case RadioGroup1.ItemIndex of
 0 : ClientSocket3.Socket.SendText('CAL;3'+NumTelefClick);
 1 : ClientSocket3.Socket.SendText('CAL;4'+NumTelefClick);
 2 : ClientSocket3.Socket.SendText('CAL;58'+NumTelefClick);
 3 : ClientSocket3.Socket.SendText('CAL;68'+NumTelefClick);
 4 : ClientSocket3.Socket.SendText('CAL;78'+NumTelefClick);
 5 : ClientSocket3.Socket.SendText('CAL;88'+NumTelefClick);
 end;
// SipPhoneSt:=1;
 LabeledEdit1.SetFocus;
end;
//end;

end;

procedure TForm1.N38Click(Sender: TObject);
begin  //��������� ����
 if MessageDlg('��������� ����� ' + NumTelefClick + ' ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
 case RadioGroup1.ItemIndex of
 0 : ClientSocket3.Socket.SendText('PLF;3'+NumTelefClick);
 1 : ClientSocket3.Socket.SendText('PLF;4'+NumTelefClick);
 2 : ClientSocket3.Socket.SendText('PLF;58'+NumTelefClick);
 3 : ClientSocket3.Socket.SendText('PLF;68'+NumTelefClick);
 4 : ClientSocket3.Socket.SendText('PLF;78'+NumTelefClick);
 5 : ClientSocket3.Socket.SendText('PLF;88'+NumTelefClick);
 end;
 LabeledEdit1.SetFocus;
 NumZakUved:=NumZakClick;
end;
end;

procedure TForm1.N39Click(Sender: TObject);
begin  //���������� �� ������
PerestavCarStrGrid(7);
end;

procedure TForm1.N40Click(Sender: TObject);
begin  //���������� �� �����
PerestavCarStrGrid(8);
end;

procedure TForm1.N41Click(Sender: TObject);
begin  //���������� �� ������
PerestavCarStrGrid(9);
end;

procedure TForm1.N42Click(Sender: TObject);
begin  //���������� �� ��������
PerestavCarStrGrid(10);
end;

procedure TForm1.N43Click(Sender: TObject);
begin  //���������� �� ��������
PerestavCarStrGrid(13);
end;

procedure TForm1.N44Click(Sender: TObject);
begin  //���������� �� �/�������
PerestavCarStrGrid(14);
end;

procedure TForm1.N45Click(Sender: TObject);
begin  //���������� �� �����
PerestavCarStrGrid(15);
end;

procedure TForm1.N46Click(Sender: TObject);
begin  //���������� �� �� �������
PerestavCarStrGrid(16);
end;

procedure TForm1.N47Click(Sender: TObject);
begin  //���������� �� �����
PerestavCarStrGrid(17);
end;

procedure TForm1.N48Click(Sender: TObject);
begin  //���������� �� ������
PerestavCarStrGrid(5);
end;

procedure TForm1.N49Click(Sender: TObject);
begin  //���������� �� �����
PerestavCarStrGrid(11);
end;

procedure TForm1.OtrabStoimostBee(NumF : integer);
var
Bookmark : TBookmarkStr;
ZakBee : integer;
TelBee : string;
KodBee : string;
AdrBee : string;
CarBee : integer;
DatBee : string;
TimBee : String;
begin //������������ ��������� �������
   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'select zakaz,telefon,kode,dat,tim,adres,car from zakazi where zakaz=:PZAKAZ';
   ADOCommand1.CommandType := cmdText;
  // Parameters.ParamByName('PZAKAZ').Value:=NumZakClick;
   Parameters.ParamByName('PZAKAZ').Value:=DBGrid1.Fields[0].AsString;
   ADODataSet1.Recordset := Execute;
   end;
   ADODataSet1.First;

 if (ADODataSet1.Recordset.RecordCount>0) then begin

//  ShowMessage('������������ �����');
//1. ��������� � ������� ������
if (ADODataSet1.Recordset.Fields[0].Value<>NULL) then ZakBee:=ADODataSet1.Recordset.Fields[0].Value
else ZakBee:=0;
if (ADODataSet1.Recordset.Fields[1].Value<>NULL) then TelBee:=ADODataSet1.Recordset.Fields[1].Value
else TelBee:='';
if (ADODataSet1.Recordset.Fields[2].Value<>NULL) then KodBee:=ADODataSet1.Recordset.Fields[2].Value
else KodBee:='';
if (ADODataSet1.Recordset.Fields[3].Value<>NULL) then DatBee:=ADODataSet1.Recordset.Fields[3].Value
else ShowMessage('���� �� �������!');
if (ADODataSet1.Recordset.Fields[4].Value<>NULL) then TimBee:=ADODataSet1.Recordset.Fields[4].Value
else ShowMessage('����� �� �������!');
if (ADODataSet1.Recordset.Fields[5].Value<>NULL) then AdrBee:=ADODataSet1.Recordset.Fields[5].Value
else AdrBee:='';
if (ADODataSet1.Recordset.Fields[6].Value<>NULL) then CarBee:=ADODataSet1.Recordset.Fields[6].Value
else CarBee:=0;
ObnovZvonkiBee(ZakBee,CarBee,TelBee,KodBee,AdrBee,DatBee,TimBee);

 //ShowMessage('������������ ������!');
  with ADOCommand1 do begin       //������� ����� � ������� ��������� ������
  CommandText := 'select car,row,col from cqueue where car=:PCAR';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=CarBee;
  ADODataSet1.Recordset := Execute;
  end;
 if (CarBee>0) and (ADODataSet1.Recordset.RecordCount>0) then begin  //���� ���� ������, ������������
StrGrdCel:=CarBee;

StrGrdRow:=ADODataSet1.Recordset.Fields[1].Value;
IF (StrGrdRow=1) then  PerestavCarStrGrid(0);
 end
else {ShowMessage('� ������� ��� ������ � ����� �������!')};


//end;
// ������� ����� �� ������� �������
with ADOCommand1 do begin
  CommandText := 'DELETE FROM zakazi WHERE ZAKAZ=:PZAKAZ';
  CommandType := cmdText;
  Parameters.ParamByName('PZAKAZ').Value:=ZakBee;
  Execute;
  end;
   with ADOQuery1 do begin  //����������� ������� ����� � �������
   SQL.Clear;
   SQL.Add('select zakaz,telefon,kode,dat,tim,adres,car,beg,en,place_end,cost,priznak,predvar,working,uvedomlen,vip from zakazi order by zakaz');
   Open;
   end;

 end
 else
 ShowMessage('������ ������ ��� � �������!')


end;
procedure TForm1.N50Click(Sender: TObject);
begin  //������ �� ��������
PerestavCarStrGrid(18);
end;

procedure TForm1.StringGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var Col1,Row1,Col2,Row2 : integer;
  LVar: OleVariant;
  StaySpeak, LgPs : string;
  params : TStringList;
  resp : string;
begin   //������������ ������� ������ � �������
case Key of
VK_RETURN : begin
if (StrGrdStr<>'') then begin //���� �� ������ ������
   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'select * from point_queues where car=:PCAR';
   ADOCommand1.CommandType := cmdText;
   Parameters.ParamByName('PCAR').Value:=StrGrdStr;
   ADODataSet1.Recordset := Execute;
   end;
   if (AdoDataSet1.RecordCount>0) then begin
   ADODataSet1.First;
   case StrGrdRow of
   0 : StaySpeak:=' �� �����?';
   1  : StaySpeak:=' �� �����?';
   2 : StaySpeak:=' �� ���������?';
   3 : StaySpeak:=' �� ��������?';
   4 : StaySpeak:=' �� ������?';
   5 : StaySpeak:=' �� �����?';
   6 : StaySpeak:=' �� ��������?';
   7 : StaySpeak:=' �� ��������?';
   8 : StaySpeak:=' �� �������?';
   9 : StaySpeak:=' �� �� �������?';
   10 : StaySpeak:=' �� ��������?';
   else StaySpeak:=' �� ������?';
   end;
    if MessageDlg('����������� ������ ' + StrGrdStr + StaySpeak ,mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
    //�������� ���������� �������
    with ADOCommand1 do begin
    ADOCommand1.CommandText := 'select login,   password, car from users where car=:PCAR';
    ADOCommand1.CommandType := cmdText;
    Parameters.ParamByName('PCAR').Value:=StrGrdStr;
    ADODataSet1.Recordset := Execute;
    end;
    ADODataSet1.First;
    if (ADODataSet1.Recordset.Fields[0].Value<>NULL) then begin
    LgPs:=ADODataSet1.Recordset.Fields[0].Value + '/' + ADODataSet1.Recordset.Fields[1].Value;
    end
    else begin
    LgPs:='';
    end;
    //ShowMessage(LgPs);
//���� ������ �� ������������ �����
  if MessageDlg('���������� ����� ��� ������ ' + StrGrdStr + '?' ,mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
  params:=TStringList.Create;
  //params.Add('row=' + IntToStr(StrGrdRow));
  params.Add('point_id=' + IntToStr(StrGrdRow));
  params.Add('state=' + '0');
//  params.Add('delzak=0');
  resp:=idHTTP1.Post(RemoteHost+'/api/' + LgPs + '/qpush',params);
  params.Free;
  if (POS('"error":"none"',resp)=0) then ShowMessage('������ ������������');
   params:=TStringList.Create;
   resp:=idHTTP1.Post(RemoteHost+'/api/' + LgPs + '/orderdestroy',params);
   params.Free;
   if (POS('"error":"none"',resp)=0) then ShowMessage('������ �������� ������');

  end
  else  begin
  params:=TStringList.Create;
  params.Add('row=' + IntToStr(StrGrdRow));
  params.Add('state=' + '0');
  params.Add('delzak=0');
  idHTTP1.Post(RemoteHost+'/api/' + LgPs + '/qpush',params);
  params.Free;
  end;

  idHTTP1.Get(RemoteHost+'/api/' + LogPswSrw + '/reforders');
       //����������� ����������


    end;
   end
   else begin
   ShowMessage('����� ������ ��� � �������!');
   ObnovStringGrig(1);
   end;
end;

StrGrdStr:='';
LabeledEdit1.SetFocus;

end;
48,96 : begin
StrGrdStr:=StrGrdStr+'0';
end;
49,97 : begin
StrGrdStr:=StrGrdStr+'1';
end;
50,98 : begin
StrGrdStr:=StrGrdStr+'2';
end;
51,99 : begin
StrGrdStr:=StrGrdStr+'3';
end;
52,100 : begin
StrGrdStr:=StrGrdStr+'4';
end;
53,101 : begin
StrGrdStr:=StrGrdStr+'5';
end;
54,102 : begin
StrGrdStr:=StrGrdStr+'6';
end;
55,103 : begin
StrGrdStr:=StrGrdStr+'7';
end;
56,104 : begin
StrGrdStr:=StrGrdStr+'8';
end;
57,105 : begin
StrGrdStr:=StrGrdStr+'9';
end;
end;


end;

procedure TForm1.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
  var StrGrdCar : string;
      CarState, CntCol, CntRow  : integer;
begin  //������������ ������
CntCol:=0;
CntRow:=0;
if  ACol mod 3 = 2  then begin
with StringGrid1.Canvas do begin
		Brush.Color:=RGB($e8,$e8,$e8);;
 		Font.Color:=clBlack;
		FillRect(Rect);
	 TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[ACol,ARow]);
end;
end;
if  Arow mod 2 = 1  then begin
with StringGrid1.Canvas do begin
		Brush.Color:=RGB($f8,$f8,$f8);;
 		Font.Color:=clBlack;
		FillRect(Rect);
	 TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[ACol,ARow]);
end;
end;
//---------------------------------------------
case ArrayStrGrd3[ACol,ARow,1] of
 0 : begin
 StringGrid1.DefaultDrawing:=true;
 end;
 1 : begin
with StringGrid1.Canvas do begin
		Brush.Color:=clGreen;
		Font.Color:=clWhite;
		FillRect(Rect);
	 TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[ACol,ARow]);
end;
 end;
 2 : begin
with StringGrid1.Canvas do begin
		Brush.Color:=clBlue;
		Font.Color:=clWhite;
		FillRect(Rect);
	 TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[ACol,ARow]);
end;
 end;
 3 : begin
with StringGrid1.Canvas do begin
		Brush.Color:=clYellow;
		Font.Color:=clRed;
		FillRect(Rect);
	 TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[ACol,ARow]);
end;
 end;
end;
CntCol:=0;
CntRow:=0;
if  ACol mod 3 = 2  then begin
with StringGrid1.Canvas do begin
		Brush.Color:=RGB($e8,$e8,$e8);;
 		Font.Color:=clBlack;
		FillRect(Rect);
	 TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[ACol,ARow]);
end;
end;
if  Arow mod 2 = 1  then begin
with StringGrid1.Canvas do begin
		Brush.Color:=RGB($f8,$f8,$f8);;
 		Font.Color:=clBlack;
		FillRect(Rect);
	 TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[ACol,ARow]);
end;
end;
//---------------------------------------------
case ArrayStrGrd3[ACol,ARow,1] of
 0 : begin
 StringGrid1.DefaultDrawing:=true;
 end;
 1 : begin
with StringGrid1.Canvas do begin
		Brush.Color:=clGreen;
		Font.Color:=clWhite;
		FillRect(Rect);
	 TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[ACol,ARow]);
end;
 end;
 2 : begin
with StringGrid1.Canvas do begin
		Brush.Color:=clBlue;
		Font.Color:=clWhite;
		FillRect(Rect);
	 TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[ACol,ARow]);
end;
 end;
 3 : begin
with StringGrid1.Canvas do begin
		Brush.Color:=clYellow;
		Font.Color:=clRed;
		FillRect(Rect);
	 TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[ACol,ARow]);
end;
 end;
 4 : begin
with StringGrid1.Canvas do begin
		Brush.Color:=RGB($99,$ff,$cc);;
		Font.Color:=clBlack;
		FillRect(Rect);
	 TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[ACol,ARow]);
end;
 end;
 5 : begin
with StringGrid1.Canvas do begin
		Brush.Color:=RGB($99,$cc,$ff);;
		Font.Color:=clBlack;
		FillRect(Rect);
	 TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[ACol,ARow]);
end;
 end;
  6 : begin
with StringGrid1.Canvas do begin
		Brush.Color:=RGB($ff,$66,$33);;
		Font.Color:=clBlack;
		FillRect(Rect);
	 TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[ACol,ARow]);
end;
 end;
 
end;

end;

procedure TForm1.N51Click(Sender: TObject);
var
 params : TStringList;
 LgPs : String;
 resp : string;
begin //�� ������
{   with ADOCommand1 do begin
  CommandText := 'update point_queues set state=0 where car=:PCAR';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=StrGrdCel;
  Execute;
  end; }
    with ADOCommand1 do begin
    ADOCommand1.CommandText := 'select login,   password, car from users where car=:PCAR';
    ADOCommand1.CommandType := cmdText;
    Parameters.ParamByName('PCAR').Value:=StrGrdCel;
    ADODataSet1.Recordset := Execute;
    end;
    ADODataSet1.First;
    if (ADODataSet1.Recordset.Fields[0].Value<>NULL) then begin
    LgPs:=ADODataSet1.Recordset.Fields[0].Value + '/' + ADODataSet1.Recordset.Fields[1].Value;
    end
    else LgPs:='';
    //-----------------------
    params:=TStringList.Create;
    params.Add('car=' + IntToStr(StrGrdCel));
    params.Add('state=' + '0');
    resp:=idHTTP1.Post(RemoteHost+'/api/' + LgPs + '/stateupd',params);
    params.Free;
ObnovStringGrig(1);
idHTTP1.Get(RemoteHost+'/api/' + LogPswSrw + '/reforders');
end;

procedure TForm1.StringGrid1DblClick(Sender: TObject);
begin //��������� ������ � ������ ������
{StringGrid1.Cursor:=crHandPoint;
StGrClDbl:=StrGrdCel;
StGrRwDbl:=StrGrdRow;
StGrCoDbl:=StrGrdCol;  }
//ShowMessage(IntToStr(StGrRwDbl));
end;

procedure TForm1.N52Click(Sender: TObject);
begin  //���������� �� ������
PerestavCarStrGrid(12);
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
var
NmrZakaz : integer;
begin
if (StringGrid1.Cursor=crHandPoint) then begin
//NumZak:= DBGrid1.Fields[0].AsInteger;
//ShowMessage(IntToStr(NumZak));
NmrZakaz:=DBGrid1.Fields[0].AsInteger;
  with ADOCommand1 do begin
  CommandText := 'update zakazi set car=:PCAR where zakaz=:PZAKAZ';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=StGrClDbl;
//  Parameters.ParamByName('PZAKAZ').Value:=NumZak;
  Parameters.ParamByName('PZAKAZ').Value:=NmrZakaz;
  Execute;
  end;
   with ADOQuery1 do begin  //����������� ������� �������
   SQL.Clear;
   SQL.Add('select zakaz,telefon,kode,dat,tim,adres,car,beg,en,place_end,cost,priznak,predvar,working,uvedomlen,vip from zakazi order by zakaz');
   Open;
   end;

PerestavCarStrGrid(1);
StringGrid1.Cursor:=crDefault;
//ObnovStringGrig(1);
//ClientSocket1.Socket.SendText(Priority+'REFRESH');
idHTTP1.Get(RemoteHost+'/api/' + LogPswSrw + '/reforders');

end;
NumZakClick:=DBGrid1.Fields[0].AsInteger;
NumTelefClick:=DBGrid1.Fields[1].AsString;
KodClick:=DBGrid1.Fields[2].AsString;
DateClick:=DBGrid1.Fields[3].AsString;
TimeClick:=DBGrid1.Fields[4].AsString;
AddrClick:=DBGrid1.Fields[5].AsString;
CarClick:=DBGrid1.Fields[6].AsString;
CostClick:=DBGrid1.Fields[10].AsString;
//������� �����
{
Application.CreateForm(TForm7, Form7);
Form7.Caption:='������ � �������� �������';
Form7.ShowModal;
Form7.Free; }

end;

procedure TForm1.DyrkamNet;
var
ColCque : integer;
CQRow : integer;
CQCol : integer;
CQue : array[1..300,1..4] of integer;
i : integer;
RowCar : integer;
ColCarOld : integer;
ColCarNew : integer;
Car  : integer;
FlagDyrka : integer;
begin
ColCque:=0;
CQRow:=1;
CQCol:=1;
i:=1;
FlagDyrka:=0;
  with ADOCommand1 do begin
  CommandText := 'select row,col,car from cqueue order by row,col';
  CommandType := cmdText;
  ADODataSet1.Recordset := Execute;
  end;
   if (AdoDataSet1.RecordCount>0) then begin
   ADODataSet1.First;
    while not ADODataSet1.Eof do begin
    ColCque:=ColCque+1;
    CQue[CQRow,CQCol]:=ADODataSet1.Recordset.Fields[0].Value;
    CQue[CQRow,CQCol+1]:=ADODataSet1.Recordset.Fields[1].Value;
    CQue[CQRow,CQCol+2]:=ADODataSet1.Recordset.Fields[2].Value;
    CQue[CQRow,CQCol+3]:=ColCque;
//    ShowMessage(IntToStr(CQue[CQRow,CQCol])+IntToStr(CQue[CQRow,CQCol+1])+IntToStr(CQue[CQRow,CQCol+2])+IntToStr(CQue[CQRow,CQCol+3]));
    CQRow:=CQRow+1;
    ADODataSet1.Next;
    end;
  //  ShowMessage(IntToStr(ColCque));
  while i<=ColCque do begin
 // ShowMessage(IntToStr(i));
    if CQue[i,1]=CQue[i+1,1] then begin
     if CQue[i,2]=CQue[i+1,2] then begin
     RowCar:=CQue[i,1];
     ColCarOld:=CQue[i,2];
     Car:=CQue[i,3];
     FlagDyrka:=1;
     break;
   // ShowMessage(IntToStr(RowCar)+IntToStr(ColCarOld)+IntToStr(Car));
   // ShowMessage(IntToStr(RowCar)+IntToStr(CQue[i,2])+IntToStr(CQue[i,3])+IntToStr(CQue[i,4]));
     end;
    end;
  i:=i+1;
  end;
  //ShowMessage(IntToStr(RowCar)+IntToStr(ColCarOld)+IntToStr(Car));
  if FlagDyrka>0 then begin
  i:=1;
  while i<=ColCque do begin
  if (CQue[i,1]=RowCar) and (CQue[i+1,1]=RowCar) and (CQue[i,2]<>ColCarOld) and (CQue[i+1,2]-CQue[i,2]<>1) then begin
  //ShowMessage(IntToStr(CQue[i,2])+IntToStr(CQue[i,3]));
  ColCarNew:=CQue[i,2]+1;
  break;
  end;
  if (CQue[i,1]=RowCar) and (CQue[i+1,1]<>RowCar)   then begin
 // ShowMessage(IntToStr(CQue[i,2])+IntToStr(CQue[i,3]));
  ColCarNew:=CQue[i,2]+1;
  break;
  end;
  i:=i+1;
  end;
  ShowMessage(IntToStr(ColCarNew)+IntToStr(Car));
  with ADOCommand1 do begin
  CommandText := 'update cqueue set col=:PCOL where car=:PCAR and row=:PROW';
  CommandType := cmdText;
  Parameters.ParamByName('PCOL').Value:=ColCarNew;
  Parameters.ParamByName('PCAR').Value:=Car;
  Parameters.ParamByName('PROW').Value:=RowCar;
  Execute;
  end;
  end;

   end;
end;

procedure TForm1.DyrkamNet2(DyrNetStr : integer);
var
CQue : array[1..300,1..4] of integer;
CQRow : integer;
CQCol : integer;
ColCque : integer;
i : integer;
Car  : integer;
FlagDyrka : integer;
CurRowDN : integer;
ErrCar : integer;
begin
///
 //ShowMessage(IntToStr(DyrNetStr));
i:=1;
FlagDyrka:=0;
ColCque:=1;
CQRow :=1;
CQCol :=1;
   with ADOCommand1 do begin
  CommandText := 'select row,col,car from cqueue  where row=:PROW order by col';
  CommandType := cmdText;
  Parameters.ParamByName('PROW').Value:=DyrNetStr;
  ADODataSet1.Recordset := Execute;
  end;
   if (AdoDataSet1.RecordCount>0) then begin
   ADODataSet1.First;
    while not ADODataSet1.Eof do begin
 //   ColCque:=ColCque+1;
    CQue[CQRow,CQCol]:=ADODataSet1.Recordset.Fields[0].Value;
    CQue[CQRow,CQCol+1]:=ADODataSet1.Recordset.Fields[1].Value;
    CQue[CQRow,CQCol+2]:=ADODataSet1.Recordset.Fields[2].Value;
    CQue[CQRow,CQCol+3]:=ColCque;
 //   ShowMessage(IntToStr(CQue[CQRow,CQCol])+IntToStr(CQue[CQRow,CQCol+1])+IntToStr(CQue[CQRow,CQCol+2])+IntToStr(CQue[CQRow,CQCol+3]));
    CQRow:=CQRow+1;
    ColCque:=ColCque+1;
    ADODataSet1.Next;
    end;
    ColCque:=ColCque-1;

    while ColCque-i>=0 do begin //��������� ���� �� ���������� � ���������� ��������
   // ShowMessage('ColCque='+IntToStr(ColCque));
     //ShowMessage(IntToStr(CQue[i,CQCol+3])+IntToStr(CQue[i,CQCol])+IntToStr(CQue[i,CQCol+1])+IntToStr(CQue[i,CQCol+2]));
      for CurRowDN:=i to ColCque do begin
     // ShowMessage(IntToStr(CQue[CurRowDN,4])+IntToStr(CQue[CurRowDN,1])+IntToStr(CQue[CurRowDN,2])+IntToStr(CQue[CurRowDN,3]));
      if (CQue[i,2]=CQue[CurRowDN,2]) and (i<>CurRowDN) then begin
     // ShowMessage('ACHTUNG! '+IntToStr(CQue[CurRowDN,4])+IntToStr(CQue[CurRowDN,1])+IntToStr(CQue[CurRowDN,2])+IntToStr(CQue[CurRowDN,3]));
      FlagDyrka:=1;
      ErrCar:=CQue[CurRowDN,3];
      ShowMessage('���������� � �����: '+IntToStr(ErrCar));
      break;
      end;
      end;
     i:=i+1;
     if (FlagDyrka=1) then  break;
    end;
     if (FlagDyrka=1) then begin  //���� � ����� ����� �����
      for i:=2 to ColCque do begin
       if (CQue[i,2]-CQue[i-1,2]<>1) then begin
       //ShowMessage('����� � ������ '+IntToStr(i));
       break;
       end;
      end;
     end;
    if (FlagDyrka=1) then begin  //����������� ����������
      with ADOCommand1 do begin
      CommandText := 'update cqueue set col=:PCOL where car=:PCAR and row=:PROW';
      CommandType := cmdText;
      Parameters.ParamByName('PCOL').Value:=i-1;
      Parameters.ParamByName('PCAR').Value:=ErrCar;
      Parameters.ParamByName('PROW').Value:=DyrNetStr;
      Execute;
      end;
    end;
   end
   else ShowMessage('������ ������');
end;

procedure TForm1.Button1Click(Sender: TObject);
begin //������� �����
DyrkamNet2(0);
end;

procedure TForm1.DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 {DBGrid1.Width:=633;
 StringGrid1.Left:=600;}
end;

procedure TForm1.Autorisation();
//������������, �������� Cookies
var 
resp, head,host, CHeader : string;
//Response: TStringStream;
i : integer;
params : TStringList;


begin
params:=TStringList.Create;

//Response := TStringStream.Create('');

 resp := idHTTP1.Get('http://bee.teleknot.ru/api/ns/' + LogPswSrw);
 head:= idHTTP1.ResponseText;
 host:=idHTTP1.Host;
 //str := idhttp1.ReadString(100);
 Memo1.Lines.Add(host);
 Memo1.Lines.Add(head);
 //Memo2.Lines.Add(str);
// cookie := idHTTP1.CookieManager.CookieCollection.Cookie[1].CookieText;
 //Memo2.Lines.Add(cookie);
 CHeader := IdHTTP1.Response.RawHeaders.Text;
 Memo1.Clear;
 Memo1.Lines.Add(CHeader);
 for i:=1 to Memo1.Lines.Count do begin
  if Pos('Cookie',Memo1.Lines.Strings[i]) > 0 then begin
   SeparStrHttp(Memo1.Lines.Strings[i],';','Rem_Tok');
   //SessionID := Memo2.Lines.Strings[i];
   Delete(Rem_Tok,1,12);
   Memo1.Lines.Add(Rem_Tok);
   break;
  end;
 end;
 Memo1.Lines.Add(str);
 StatusBar1.Panels[1].Text:=head;
// Response.Free;
 //�������� Cookie SessionID
{
params.Add('session[username]=dispatcher');
params.Add('session[password]=x11!!unkde');
 str := idHTTP1.Post('http://bee.teleknot.ru/sign_in',params);
 host:=idHTTP1.Host;
 head:= idHTTP1.ResponseText;
  Memo2.Lines.Add(host);
 Memo2.Lines.Add(head);
 Memo2.Lines.Add(str); }
end;

procedure TForm1.SeparStrHttp(IncomingStroke: string; Separator: char;
              ParamStr: string);
 var
  T: TStringList;
begin
 T:=TStringList.create;
 T.text:=stringReplace(IncomingStroke,Separator,#13#10,[rfReplaceAll]);
{ SeparateString1:=T[0];     //calling
 SeparateString2:=T[1];     //called }
 Rem_Tok:=T[0];
 T.Free;
end;

procedure TForm1.HttpSndZak(addr, ndriv, nzak, status, phone: string);
var
params : TStringList;
resp, head : string;
begin
//�������� �����
Memo1.Clear;
params:=TStringList.Create;
params.Add(AnsiToUTF8('addr=' + addr));
params.Add('ndriv=' + ndriv);
params.Add('nzak=' + nzak);
params.Add(AnsiToUTF8('status=' + status));
params.Add('phone=' + phone);
resp := idHTTP1.Post('http://bee.teleknot.ru/api/dwo',params);
head:= idHTTP1.ResponseText;
Memo1.Lines.Add(head);
Memo1.Lines.Add(resp);

params.Free;
end;


procedure TForm1.Button2Click(Sender: TObject);
var

params : TStringList;
resp, head : string;
begin

Memo2.Clear;
 resp := idHTTP1.Get('http://smsc.ru/sys/balance.php?' + 'login=taxipchelka' +
 '&psw=gjuht,bwrbq');
head:= idHTTP1.ResponseText;
Memo2.Lines.Add(head);
Memo2.Lines.Add('�� SMS-�����:  '+resp+' ���');
end;



procedure TForm1.MenuSMSClick(Sender: TObject);
var
resp, head : string;
begin
 if MessageDlg('������� SMS �� ����� ' + NumTelefClick + ' ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
   if (Length(NumTelefClick) = 10) and (NumTelefClick[1] = '9') then begin
 resp := idHTTP1.Get('http://smsc.ru/sys/send.php?' + 'login=taxipchelka' +
 '&psw=gjuht,bwrbq' + '&phones=+7' + NumTelefClick + '&mes=���������� ������ �������. ����� ������ ������ ��� �������� �������!'
  +  '&sender=TAXI');
head:= idHTTP1.ResponseText;
 StatusBar1.Panels[1].Text:=head;
   with ADOCommand1 do begin
  CommandText := 'UPDATE zakazi SET uvedomlen=1 where zakaz=:PNUM';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=NumZakClick;
  Execute;
  end;
   //ClientSocket1.Socket.SendText(Priority+'REFRESH');
   idHTTP1.Get(RemoteHost+'/api/' + LogPswSrw + '/reforders');
   end
   else //ShowMessage('������������ ����� ��������!');
   UvedGorAbon();
   end;

end;

procedure TForm1.SMS_to_driverClick(Sender: TObject);
var
CarTelef, resp, head : string;
begin
  with ADOCommand1 do begin
  CommandText := 'select num, telef from cars where num=' + CarClick;
  CommandType := cmdText;
  ADODataSet1.Recordset := Execute;
  end;
   if (AdoDataSet1.RecordCount>0) then begin
   ADODataSet1.First;
   if ADODataSet1.Recordset.Fields[1].Value <> NULL then  begin
   CarTelef:=ADODataSet1.Recordset.Fields[1].Value;
    if MessageDlg('������� SMS �������� '+ CarClick +' �� ����� ' + CarTelef + ' ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
     if (Length(CarTelef) = 10) and (CarTelef[1] = '9') then begin
     resp := idHTTP1.Get('http://smsc.ru/sys/send.php?' + 'login=taxipchelka' +
     '&psw=gjuht,bwrbq' + '&phones=+7' + CarTelef + '&mes='+ AddrClick + '&flash=1'+ '&sender=TAXI');
     head:= idHTTP1.ResponseText;
     StatusBar1.Panels[1].Text:=head;
    // end;
     end
     else ShowMessage('������������ ����� ��������!');
     end;
  // end
   end
   else ShowMessage('� �������� ��� ��������!');
    end
   else  ShowMessage('��� ������ ��������!');
end;

procedure TForm1.UvedGorAbon();
var
CalledPartyNumber, CallingPartyNumber : string;
begin
{CalledPartyNumber:=NumTelefClick;
NumZakUvedGor:=IntToStr(NumZakClick);
CallingPartyNumber:='8619676969';
AWCapi.PhoneConversation:=false;
AWCapi.PlayFileName:='.\player4.wav';
AWCapi.VoiceMailPlayFormat:=ff3_ULAW;
AWCapi.MakeCall(CalledPartyNumber,CallingPartyNumber,'','',128,128,0,128,128);
Timer3.Interval:=20000;
Timer3.Enabled:=true; }

end;


procedure TForm1.AWCapiErrorMessage(Sender: TObject; number: Word;
  const msg: String);
begin
StatusBar1.Panels[1].text :='Error: '  + msg;
end;

procedure TForm1.AWCapiConnected(Sender: TObject);
begin
{   StatusBar1.Panels[1].text := 'Has been connected';
   Timer3.Enabled:=false;
   Timer3.Interval:=12000;
   Timer3.Enabled:=true;

   if NumZakUvedGor <> '' then begin
   with ADOCommand1 do begin
  CommandText := 'UPDATE zakazi SET uvedomlen=1 where zakaz=:PNUM';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=NumZakUvedGor;
  Execute;
  end;
   ClientSocket1.Socket.SendText(Priority+'REFRESH');
   NumZakUvedGor:='';
   end;  }
end;

procedure TForm1.AWCapiDisconnected(Sender: TObject; const Reason: String;
  PLCI: Cardinal);
begin
  StatusBar1.Panels[1].text := 'Disconnected reason: ' + Reason ;
  Timer3.Enabled:=false;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
 { if not AWCapi.DisconnectCall then
              StatusBar1.Panels[0].text := 'Hang up failure';}
end;

procedure TForm1.SMSOfficeGate1Click(Sender: TObject);
var
 Str : string;
begin
 if MessageDlg('������� SMS �� ����� ' + NumTelefClick + ' ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
   if (Length(NumTelefClick) = 10) and (NumTelefClick[1] = '9') then begin
{ resp := idHTTP1.Get('http://smsc.ru/sys/send.php?' + 'login=taxipchelka' +
 '&psw=gjuht,bwrbq' + '&phones=+7' + NumTelefClick + '&mes=���������� ������ �������. ����� ������ ������ ��� �������� �������!'
  + '&sender=TAXI');}
{head:= idHTTP1.ResponseText;
 StatusBar1.Panels[1].Text:=head; }
 {  with ADOCommand1 do begin
  CommandText := 'UPDATE zakazi SET uvedomlen=1 where zakaz=:PNUM';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=NumZakClick;
  Execute;
  end;  }
  // ClientSocket1.Socket.SendText(Priority+'REFRESH');
  Str:='UVE;' + IntToStr(NumZakClick) + ';' + NumTelefClick + ';' + '���������� ������ �������. ����� ������ ������ ��� �������� �������!';
  ClientSocket2.Socket.SendText(Str);
   end
   else //ShowMessage('������������ ����� ��������!');
   UvedGorAbon();
   end;
 // end;

end;

procedure TForm1.ClientSocket2Read(Sender: TObject;
  Socket: TCustomWinSocket);
var
Skt2RsvTxt, NomerZak, Result:string;
T: TStringList;

begin
T:=TStringList.create;
Skt2RsvTxt:=Socket.ReceiveText;
T.text:=stringReplace(Skt2RsvTxt,';',#13#10,[rfReplaceAll]);
NomerZak:=T[0];
Result:=T[1];
T.Free;
if Result<>'ERROR' then begin
   with ADOCommand1 do begin
  CommandText := 'UPDATE zakazi SET uvedomlen=1 where zakaz=:PNUM';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=NomerZak;
  Execute;
  end;
  // ClientSocket1.Socket.SendText(Priority+'REFRESH');
  idHTTP1.Get(RemoteHost+'/api/' + LogPswSrw + '/reforders');
end;
end;

procedure TForm1.ClientSocket2Error(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
begin
ErrorCode:=0;
end;

procedure TForm1.ClientSocket3Connecting(Sender: TObject;
  Socket: TCustomWinSocket);
begin
StatusBar1.Panels[1].Text:='SIP ��������������...';
end;

procedure TForm1.ClientSocket3Connect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
StatusBar1.Panels[1].Text:='SIP �����������';
end;

procedure TForm1.ClientSocket3Read(Sender: TObject;
  Socket: TCustomWinSocket);
  var  s,CallingNumb, Channel: string;
begin
//������ ��������� �� SIP-��������
s:=Socket.ReceiveText;
 if (s[1]+s[2]+s[3]='DAT') then begin    //������ �������� ������
 Delete(s,1,3);
 SeparateString(s,';',CallingNumb,Channel);
       //������� CallingNumb----------------------------
       if (Length(CallingNumb)=11) and (CallingNumb[1]='8') then begin
       Delete(CallingNumb,1,1);
       end;
       if (Length(CallingNumb)=11) and (CallingNumb[1]='7') then begin
       Delete(CallingNumb,1,1);
       end;
       if (Length(CallingNumb)=10) and (CallingNumb[1]+CallingNumb[2]+CallingNumb[3]+CallingNumb[4]+CallingNumb[5]='86196') then begin
       Delete(CallingNumb,1,5);
       end;
       if (Length(CallingNumb)=6) and (CallingNumb[1]='8') then begin
       Delete(CallingNumb,1,1);
       end;
      //------------------------------------------------
 StatusBar1.Panels[1].Text:=CallingNumb;
 ChanActive[StrToInt(Channel)]:=1;
 CallsProcessing(CallingNumb, 'asterisk'); //������� � Zvonki
   case StrToInt(Channel) of
   1: begin Label13.Caption:=CallingNumb+';'+IntToStr(NumZak);
       if VipAbon>0 then Label13.Color:=clRed else Label13.Color:=clYellow; end;
   2: begin Label14.Caption:=CallingNumb+';'+IntToStr(NumZak);
       if VipAbon>0 then Label14.Color:=clRed else Label14.Color:=clYellow; end;
   3: begin Label15.Caption:=CallingNumb+';'+IntToStr(NumZak);
       if VipAbon>0 then Label15.Color:=clRed else Label15.Color:=clYellow; end;
   4: begin Label16.Caption:=CallingNumb+';'+IntToStr(NumZak);
       if VipAbon>0 then Label16.Color:=clRed else Label16.Color:=clYellow; end;
   5: begin Label17.Caption:=CallingNumb+';'+IntToStr(NumZak);
       if VipAbon>0 then Label17.Color:=clRed else Label17.Color:=clYellow; end;
   6: begin Label20.Caption:=CallingNumb+';'+IntToStr(NumZak);
       if VipAbon>0 then Label20.Color:=clRed else Label20.Color:=clYellow; end;
   end;
  //----------���� �������� ��� ��������� ------------
  if NOT CheckBox1.Checked then begin
   s:=CallingNumb+';asterisk';
     if push(s) then begin
     StatusBar1.Panels[2].Text:='� �������: '+IntToStr(Length(Queue))+' �������';
    // ShowMessage(IntToStr(Length(Queue)));
     end
     else begin
     StatusBar1.Panels[2].Text:='������� �����������';
     Inc(Count);
     StatusBar1.Panels[1].Text:='���������'+IntTostr(Count);
     end;
   //  ShowMessage(s);
  end;
  //--------------------------------------------------
 end;

 if (s[1]+s[2]+s[3]='NAS') then begin    //������ �������� Not Assigned Channel
  //ShowMessage(s);
   case ChanAssign of
   1: begin Label13.Color:=clActiveBorder; Label13.Caption:='�����' end;
   2: begin Label14.Color:=clActiveBorder; Label14.Caption:='�����' end;
   3: begin Label15.Color:=clActiveBorder; Label15.Caption:='�����' end;
   4: begin Label16.Color:=clActiveBorder; Label16.Caption:='�����' end;
   5: begin Label17.Color:=clActiveBorder; Label17.Caption:='�����' end;
   6: begin Label20.Color:=clActiveBorder; Label20.Caption:='�����' end;
   end;
 LabeledEdit1.Text:='';
 LabeledEdit1.EditLabel.Caption:='�������';
 LabeledEdit2.Text:='';
 LabeledEdit3.Text:='';
 LabeledEdit4.Text:='';
 LabeledEdit4.EditLabel.Caption:='�����';
 LabeledEdit5.Text:='';
 LabeledEdit6.Text:='';
 LabeledEdit7.Text:='';
  ChanActive[ChanAssign]:=0;
  ChanAssign:=0;
 end;

 if (s[1]+s[2]+s[3]='WSP') then begin
 ClientSocket3.Socket.SendText('HNG;6');
    with ADOCommand1 do begin
  CommandText := 'UPDATE zakazi SET uvedomlen=1 where zakaz=:PNUM';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=NumZakUved;
  Execute;
  end;
//   ClientSocket1.Socket.SendText(Priority+'REFRESH');
idHTTP1.Get(RemoteHost+'/api/' + LogPswSrw + '/reforders');
 end;
end;

procedure TForm1.FillCard(NumTelCard:string);
 var CallingNumb,NZakaza:string;
begin
//ShowMessage(NumTelCard);
SeparateString(NumTelCard,';',CallingNumb,NZakaza);
 with ADOCommand1 do begin       //���� �� ����� ������� � ������� ���������
  CommandText := 'SELECT * FROM abonenty ' +
    'WHERE telefon = :PTELEFON OR telefon2 = :PTELEFON2';
  CommandType := cmdText;
  Parameters.ParamByName('PTELEFON').Value := CallingNumb;
  Parameters.ParamByName('PTELEFON2').Value := CallingNumb;
  ADODataSet1.Recordset := Execute;
end;
if ADODataSet1.RecordCount>0 then begin
ADODataSet1.Recordset.MoveFirst;  //������������ �� ����������
   LabeledEdit1.Text:= CallingNumb;
   if ADODataSet1.Recordset.Fields[7].Value=NULL then LabeledEdit3.Text:='0'
   else
  LabeledEdit3.Text:=IntToStr(ADODataSet1.Recordset.Fields[7].Value);
  if ADODataSet1.Recordset.Fields[3].Value=NULL then LabeledEdit4.Text:=''
   else
  LabeledEdit4.Text:=ADODataSet1.Recordset.Fields[3].Value;
   if ADODataSet1.Recordset.Fields[11].Value=NULL then LabeledEdit4.EditLabel.Caption:=''
   else
  LabeledEdit4.EditLabel.Caption:= ADODataSet1.Recordset.Fields[11].Value;
  if ADODataSet1.Recordset.Fields[2].Value=NULL then LabeledEdit2.Text:=''
   else
  LabeledEdit2.Text:= ADODataSet1.Recordset.Fields[2].Value;
  if (ADODataSet1.Recordset.Fields[110].Value=NULL) OR (ADODataSet1.Recordset.Fields[110].Value=0) then VipAbon:=0
   else
  VipAbon:= ADODataSet1.Recordset.Fields[110].Value;
end
else
 LabeledEdit1.Text:= CallingNumb;

end;

procedure TForm1.Label13Click(Sender: TObject);
begin
if not (LabeledEdit1.Text <> '') then begin
  if ChanActive[1] > 0 then begin
  ChanAssign:=1;
  ClientSocket3.Socket.SendText('ANS;'+IntToStr(ChanAssign));
  Label13.Color:=clGreen;
  FillCard(Label13.Caption);
  LabeledEdit1.SetFocus;
  end;
end;
end;

procedure TForm1.Label14Click(Sender: TObject);
begin
if not (LabeledEdit1.Text <> '') then begin
  if ChanActive[2] > 0 then begin
  ChanAssign:=2;
  ClientSocket3.Socket.SendText('ANS;'+IntToStr(ChanAssign));
  Label14.Color:=clGreen;
  FillCard(Label14.Caption);
  LabeledEdit1.SetFocus;
  end;
end;
end;

procedure TForm1.Label15Click(Sender: TObject);
begin
if not (LabeledEdit1.Text <> '') then begin
  if ChanActive[3] > 0 then begin
  ChanAssign:=3;
  ClientSocket3.Socket.SendText('ANS;'+IntToStr(ChanAssign));
  Label15.Color:=clGreen;
  FillCard(Label15.Caption);
  LabeledEdit1.SetFocus;
  end;
end;
end;

procedure TForm1.Label16Click(Sender: TObject);
begin
if not (LabeledEdit1.Text <> '') then begin
  if ChanActive[4] > 0 then begin
  ChanAssign:=4;
  ClientSocket3.Socket.SendText('ANS;'+IntToStr(ChanAssign));
  Label16.Color:=clGreen;
  FillCard(Label16.Caption);
  LabeledEdit1.SetFocus;
  end;
end;
end;

procedure TForm1.Label17Click(Sender: TObject);
begin
if not (LabeledEdit1.Text <> '') then begin
  if ChanActive[5] > 0 then begin
  ChanAssign:=5;
  ClientSocket3.Socket.SendText('ANS;'+IntToStr(ChanAssign));
  Label17.Color:=clGreen;
  FillCard(Label17.Caption);
  LabeledEdit1.SetFocus;
  end;
end;
end;

procedure TForm1.Label20Click(Sender: TObject);
begin
if not (LabeledEdit1.Text <> '') then begin
  if ChanActive[6] > 0 then begin
  ChanAssign:=6;
  ClientSocket3.Socket.SendText('ANS;'+IntToStr(ChanAssign));
  Label20.Color:=clGreen;
  FillCard(Label20.Caption);
  LabeledEdit1.SetFocus;
  end;
end;
end;

procedure TForm1.Label13MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Label13.Cursor:=crHandPoint;
end;

procedure TForm1.Label14MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Label14.Cursor:=crHandPoint;
end;

procedure TForm1.Label15MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Label15.Cursor:=crHandPoint;
end;

procedure TForm1.Label16MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Label16.Cursor:=crHandPoint;
end;

procedure TForm1.Label17MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Label17.Cursor:=crHandPoint;
end;

procedure TForm1.Label20MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Label20.Cursor:=crHandPoint;
end;

procedure TForm1.DBGrid1Enter(Sender: TObject);
begin
DBGrd1Focused:=true;
end;

procedure TForm1.DBGrid1Exit(Sender: TObject);
begin
DBGrd1Focused:=false;
end;

procedure TForm1.StringGrid1Enter(Sender: TObject);
begin
StrngGrd1Focused:=true;
end;

procedure TForm1.StringGrid1Exit(Sender: TObject);
begin
StrngGrd1Focused:=false;
end;

procedure TForm1.SaveInFl(TxtQuery: string);
var
  CurDateTime: TDateTime;
  FileName, Dir: String;
  FlWr : TextFile;
begin  //��������� � ����
Dir:=GetCurrentDir;
CurDateTime := Now;
FileName := FormatDateTime('yyyy-mm-dd', CurDateTime) + '.txt';
FileName :=Dir + '\LOG\'+ FileName;
AssignFile(FlWr, FileName);
if FileExists(FileName) then begin
Append(FlWr);
//WriteLn(FlWr,NumOrg);
//WriteLn(FlWr,DtTimOrg);
//WriteLn(FlWr,SMS);
WriteLn(FlWr,FormatDateTime('yyyy-mm-dd hh:nn', CurDateTime));
WriteLn(FlWr,TxtQuery);
WriteLn(FlWr,'----------------------');
CloseFile(FlWr);
end
else begin
ReWrite(FlWr);
//WriteLn(FlWr,NumOrg);
//WriteLn(FlWr,DtTimOrg);
//WriteLn(FlWr,SMS);
WriteLn(FlWr,FormatDateTime('yyyy-mm-dd hh:nn', CurDateTime));
WriteLn(FlWr,TxtQuery);
WriteLn(FlWr,'----------------------');
CloseFile(FlWr);
end;
end;

procedure TForm1.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
  var s: string;
begin
s:=Socket.ReceiveText;
 //ShowMessage(s);

   if (s[1]+s[2]+s[3]='REF') then begin  //���� ��� REFRESH
    if not DBGrd1Focused then begin
     with ADOQuery1 do begin  //����������� �� � �������
     SQL.Clear;
     SQL.Add('select zakaz,telefon,kode,dat,tim,adres,car,beg,en,place_end,cost,priznak,predvar,working,uvedomlen,vip from zakazi order by zakaz');
     Open;
     end;
    end;
    if not StrngGrd1Focused then
     ObnovStringGrig(1)
    end;

end;

end.
