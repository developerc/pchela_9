unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm2 = class(TForm)
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
   ScktAddr : string;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
//������� �� ������ "�����"
Form1.Log.Clear;
Form1.Log.Lines.LoadFromFile('priz.txt');
Unit1.priz_value:= StrToInt(Form1.Log.Lines.Strings[0]);
ScktAddr:= Form1.Log.Lines.Strings[1];//����� IP-����� �������
Unit1.Priority:= TrimRight(Form1.Log.Lines.Strings[2]);//����� ���������� ����� �����
if Form1.Log.Lines.Strings[3] = 'CHBALYES' then Unit1.CHBALYES :=1;
if Form1.Log.Lines.Strings[4] = 'ADDLETTERSYES' then Unit1.ADDLETTERS :=1;
Unit1.LogPswSrw := Form1.Log.Lines.Strings[5];
Unit1.RemoteHost:= Form1.Log.Lines.Strings[6];
   //������������� ����������� � ������� ������ �����������
  {Form1.ClientSocket1.Address:=ScktAddr;
  Form1.ClientSocket1.Port := 6000;
  Form1.ClientSocket1.Open;   }

  Form1.ClientSocket2.Address:=ScktAddr;
  Form1.ClientSocket2.Port := 6001;
  Form1.ClientSocket2.Open;

  Form1.ClientSocket3.Address:='127.0.0.1';
  Form1.ClientSocket3.Port := 6002;
  Form1.ClientSocket3.Open;

  Form1.ServerSocket1.Port:=StrToInt(Form1.Log.Lines.Strings[7]);
  Form1.ServerSocket1.Open;

 //if Form1.ClientSocket2.Open=false then ShowMessage('SMS ������ �� ��������!');
 //if Form1.ClientSocket2.Active=false then ShowMessage('SMS ������ �� ��������!');
 //else Form1.ClientSocket2.Open;
Close;


end;

end.
