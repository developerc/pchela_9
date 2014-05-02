unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB;

type
  TForm4 = class(TForm)
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    LabeledEdit9: TLabeledEdit;
    LabeledEdit10: TLabeledEdit;
    LabeledEdit11: TLabeledEdit;
    LabeledEdit12: TLabeledEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label2: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Label3: TLabel;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Label4: TLabel;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit30: TEdit;
    Label5: TLabel;
    Edit31: TEdit;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    Edit36: TEdit;
    Label6: TLabel;
    ADOConnection1: TADOConnection;
    ADOCommand1: TADOCommand;
    ADODataSet1: TADODataSet;
    Edit37: TEdit;
    Edit38: TEdit;
    Edit39: TEdit;
    Edit40: TEdit;
    Edit41: TEdit;
    Edit42: TEdit;
    Edit43: TEdit;
    Edit44: TEdit;
    Edit45: TEdit;
    Edit46: TEdit;
    Edit47: TEdit;
    Edit48: TEdit;
    Edit49: TEdit;
    Edit50: TEdit;
    Edit51: TEdit;
    Edit52: TEdit;
    Edit53: TEdit;
    Edit54: TEdit;
    Edit55: TEdit;
    Edit56: TEdit;
    Label7: TLabel;
    Edit57: TEdit;
    Edit58: TEdit;
    Edit59: TEdit;
    Edit60: TEdit;
    Edit61: TEdit;
    Edit62: TEdit;
    Edit63: TEdit;
    Edit64: TEdit;
    Edit65: TEdit;
    Edit66: TEdit;
    Edit67: TEdit;
    LabeledEdit13: TLabeledEdit;
    procedure LabeledEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LabeledEdit4KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure PerfomRecSet(Sred : real);
    procedure ClearEdit();
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  Sred : real;
  n : integer;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm4.LabeledEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin  //нажатие в поле Код
case Key of
VK_RETURN : begin
if LabeledEdit3.Text<>'' then begin
   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'select * from abonenty where kode=:PKODE'; //выбираем запись для этого абонента
   ADOCommand1.CommandType := cmdText;
   ADOCommand1.Parameters.ParamByName('PKODE').Value:=LabeledEdit3.Text;
   ADODataSet1.Recordset := Execute;
   end;
   PerfomRecSet(Sred);

  end;
end;
VK_ESCAPE : begin
Form4.Close;
end;
end;
end;

procedure TForm4.LabeledEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState); //нажатие в поле Телефон

begin
case Key of
VK_RETURN : begin
//ShowMessage('нажали enter');
//Sred:=0;
//n:=0;
if LabeledEdit1.Text<>'' then begin
   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'select * from abonenty where telefon=:PTELEFON'; //выбираем запись для этого телефона
   ADOCommand1.CommandType := cmdText;
   ADOCommand1.Parameters.ParamByName('PTELEFON').Value:=LabeledEdit1.Text;
   ADODataSet1.Recordset := Execute;
   end;
PerfomRecSet(Sred);
end;
end;
VK_ESCAPE : begin
Form4.Close;
end;
end;

end;

procedure TForm4.PerfomRecSet(Sred : real);
begin
Sred:=0;
n:=0;
   if (ADODataSet1.RecordCount>0)  then begin //если абонент с таким номером существует
    if ADODataSet1.Recordset.Fields[1].Value<>NULL then  begin //telefon
      LabeledEdit1.Text:=ADODataSet1.Recordset.Fields[1].Value;
     end
     else LabeledEdit1.Text:='';
    if ADODataSet1.Recordset.Fields[2].Value<>NULL then  begin //kode
      LabeledEdit3.Text:=ADODataSet1.Recordset.Fields[2].Value;
     end
     else LabeledEdit3.Text:='';
    if ADODataSet1.Recordset.Fields[3].Value<>NULL then  begin //adres
      LabeledEdit4.Text:=ADODataSet1.Recordset.Fields[3].Value;
     end
     else LabeledEdit4.Text:='';
    if ADODataSet1.Recordset.Fields[4].Value<>NULL then  begin //dat
      LabeledEdit7.Text:=FormatDateTime('dd.mm.yy',ADODataSet1.Recordset.Fields[4].Value);
     end
     else LabeledEdit7.Text:='';
    if ADODataSet1.Recordset.Fields[5].Value<>NULL then  begin //tim
      LabeledEdit6.Text:=FormatDateTime('hh:mm',ADODataSet1.Recordset.Fields[5].Value);
     end
     else LabeledEdit6.Text:='';
    if ADODataSet1.Recordset.Fields[6].Value<>NULL then  begin //cost
      LabeledEdit8.Text:=ADODataSet1.Recordset.Fields[6].Value;
     end
     else LabeledEdit8.Text:='';
    if ADODataSet1.Recordset.Fields[7].Value<>NULL then  begin //balans
      LabeledEdit9.Text:=ADODataSet1.Recordset.Fields[7].Value;
     end
     else LabeledEdit9.Text:='';
    if ADODataSet1.Recordset.Fields[8].Value<>NULL then  begin //poezdok
      LabeledEdit10.Text:=ADODataSet1.Recordset.Fields[8].Value;
     end
     else LabeledEdit10.Text:='';
    if ADODataSet1.Recordset.Fields[9].Value<>NULL then  begin //otlog
      LabeledEdit11.Text:=ADODataSet1.Recordset.Fields[9].Value;
     end
     else LabeledEdit11.Text:='';
    if ADODataSet1.Recordset.Fields[10].Value<>NULL then  begin //priz
      LabeledEdit12.Text:=ADODataSet1.Recordset.Fields[10].Value;
     end
     else LabeledEdit12.Text:='';
    if ADODataSet1.Recordset.Fields[11].Value<>NULL then  begin //fio
      LabeledEdit5.Text:=ADODataSet1.Recordset.Fields[11].Value;
     end
     else LabeledEdit5.Text:='';
    if ADODataSet1.Recordset.Fields[12].Value<>NULL then  begin //telefon2
      LabeledEdit2.Text:=ADODataSet1.Recordset.Fields[12].Value;
     end
     else LabeledEdit2.Text:='';
    if ADODataSet1.Recordset.Fields[13].Value<>NULL then  begin //first_d
      Edit1.Text:=FormatDateTime('dd.mm.yy',ADODataSet1.Recordset.Fields[13].Value);
     end
     else Edit1.Text:='';
    if ADODataSet1.Recordset.Fields[14].Value<>NULL then  begin //first_t
      Edit8.Text:=FormatDateTime('hh:mm',ADODataSet1.Recordset.Fields[14].Value);
     end
     else Edit8.Text:='';
    if ADODataSet1.Recordset.Fields[15].Value<>NULL then  begin //first_c
      Edit15.Text:=ADODataSet1.Recordset.Fields[15].Value;
     end
     else Edit15.Text:='';
    if ADODataSet1.Recordset.Fields[16].Value<>NULL then  begin //first_p
      Edit23.Text:=ADODataSet1.Recordset.Fields[16].Value;
     end
     else Edit23.Text:='';
    if ADODataSet1.Recordset.Fields[17].Value<>NULL then  begin //first_a
      Edit30.Text:=ADODataSet1.Recordset.Fields[17].Value;
     end
     else Edit30.Text:='';
    if ADODataSet1.Recordset.Fields[18].Value<>NULL then  begin //second_d
      Edit2.Text:=FormatDateTime('dd.mm.yy',ADODataSet1.Recordset.Fields[18].Value);
     end
     else Edit2.Text:='';
    if ADODataSet1.Recordset.Fields[19].Value<>NULL then  begin //second_t
      Edit9.Text:=FormatDateTime('hh:mm',ADODataSet1.Recordset.Fields[19].Value);
     end
     else Edit9.Text:='';
     if ADODataSet1.Recordset.Fields[20].Value<>NULL then  begin //second_c
      Edit16.Text:=ADODataSet1.Recordset.Fields[20].Value;
     end
     else Edit16.Text:='';
     if ADODataSet1.Recordset.Fields[21].Value<>NULL then  begin //second_p
      Edit24.Text:=ADODataSet1.Recordset.Fields[21].Value;
     end
     else Edit24.Text:='';
     if ADODataSet1.Recordset.Fields[22].Value<>NULL then  begin //second_a
      Edit31.Text:=ADODataSet1.Recordset.Fields[22].Value;
     end
     else Edit31.Text:='';
     if ADODataSet1.Recordset.Fields[23].Value<>NULL then  begin //third_d
      Edit3.Text:=FormatDateTime('dd.mm.yy',ADODataSet1.Recordset.Fields[23].Value);
     end
     else Edit3.Text:='';
     if ADODataSet1.Recordset.Fields[24].Value<>NULL then  begin //third_t
      Edit10.Text:=FormatDateTime('hh:mm',ADODataSet1.Recordset.Fields[24].Value);
     end
     else Edit10.Text:='';
     if ADODataSet1.Recordset.Fields[25].Value<>NULL then  begin //third_c
      Edit17.Text:=ADODataSet1.Recordset.Fields[25].Value;
     end
     else Edit17.Text:='';
     if ADODataSet1.Recordset.Fields[26].Value<>NULL then  begin //third_p
      Edit25.Text:=ADODataSet1.Recordset.Fields[26].Value;
     end
     else Edit25.Text:='';
     if ADODataSet1.Recordset.Fields[27].Value<>NULL then  begin //third_a
      Edit32.Text:=ADODataSet1.Recordset.Fields[27].Value;
     end
     else Edit32.Text:='';
     if ADODataSet1.Recordset.Fields[28].Value<>NULL then  begin //fourth_d
      Edit4.Text:=FormatDateTime('dd.mm.yy',ADODataSet1.Recordset.Fields[28].Value);
     end
     else Edit4.Text:='';
     if ADODataSet1.Recordset.Fields[29].Value<>NULL then  begin //fourth_t
      Edit11.Text:=FormatDateTime('hh:mm',ADODataSet1.Recordset.Fields[29].Value);
     end
     else Edit11.Text:='';
     if ADODataSet1.Recordset.Fields[30].Value<>NULL then  begin //fourth_c
      Edit18.Text:=ADODataSet1.Recordset.Fields[30].Value;
     end
     else Edit18.Text:='';
     if ADODataSet1.Recordset.Fields[31].Value<>NULL then  begin //fourth_p
      Edit26.Text:=ADODataSet1.Recordset.Fields[31].Value;
     end
     else Edit26.Text:='';
     if ADODataSet1.Recordset.Fields[32].Value<>NULL then  begin //fourth_a
      Edit33.Text:=ADODataSet1.Recordset.Fields[32].Value;
     end
     else Edit33.Text:='';
     if ADODataSet1.Recordset.Fields[33].Value<>NULL then  begin //fifth_d
      Edit5.Text:=FormatDateTime('dd.mm.yy',ADODataSet1.Recordset.Fields[33].Value);
     end
     else Edit5.Text:='';
     if ADODataSet1.Recordset.Fields[34].Value<>NULL then  begin //fifth_t
      Edit12.Text:=FormatDateTime('hh:mm',ADODataSet1.Recordset.Fields[34].Value);
     end
     else Edit12.Text:='';
     if ADODataSet1.Recordset.Fields[35].Value<>NULL then  begin //fifth_c
      Edit19.Text:=ADODataSet1.Recordset.Fields[35].Value;
     end
     else Edit19.Text:='';
     if ADODataSet1.Recordset.Fields[36].Value<>NULL then  begin //fifth_p
      Edit27.Text:=ADODataSet1.Recordset.Fields[36].Value;
     end
     else Edit27.Text:='';
     if ADODataSet1.Recordset.Fields[37].Value<>NULL then  begin //fifth_a
      Edit34.Text:=ADODataSet1.Recordset.Fields[37].Value;
     end
     else Edit34.Text:='';
     if ADODataSet1.Recordset.Fields[38].Value<>NULL then  begin //sixth_d
      Edit6.Text:=FormatDateTime('dd.mm.yy',ADODataSet1.Recordset.Fields[38].Value);
     end
     else Edit6.Text:='';
     if ADODataSet1.Recordset.Fields[39].Value<>NULL then  begin //sixth_t
      Edit13.Text:=FormatDateTime('hh:mm',ADODataSet1.Recordset.Fields[39].Value);
     end
     else Edit13.Text:='';
      if ADODataSet1.Recordset.Fields[40].Value<>NULL then  begin //sixth_c
      Edit20.Text:=ADODataSet1.Recordset.Fields[40].Value;
     end
     else Edit20.Text:='';
      if ADODataSet1.Recordset.Fields[41].Value<>NULL then  begin //sixth_p
      Edit28.Text:=ADODataSet1.Recordset.Fields[41].Value;
     end
     else Edit28.Text:='';
     if ADODataSet1.Recordset.Fields[42].Value<>NULL then  begin //sixth_a
      Edit35.Text:=ADODataSet1.Recordset.Fields[42].Value;
     end
     else Edit35.Text:='';
     if ADODataSet1.Recordset.Fields[43].Value<>NULL then  begin //seventh_d
      Edit7.Text:=FormatDateTime('dd.mm.yy',ADODataSet1.Recordset.Fields[43].Value);
     end
     else Edit7.Text:='';
     if ADODataSet1.Recordset.Fields[44].Value<>NULL then  begin //seventh_t
      Edit14.Text:=FormatDateTime('hh:mm',ADODataSet1.Recordset.Fields[44].Value);
     end
     else Edit14.Text:='';
     if ADODataSet1.Recordset.Fields[45].Value<>NULL then  begin //seventh_c
      Edit21.Text:=ADODataSet1.Recordset.Fields[45].Value;
     end
     else Edit21.Text:='';
     if ADODataSet1.Recordset.Fields[46].Value<>NULL then  begin //seventh_p
      Edit29.Text:=ADODataSet1.Recordset.Fields[46].Value;
     end
     else Edit29.Text:='';
     if ADODataSet1.Recordset.Fields[47].Value<>NULL then  begin //seventh_a
      Edit36.Text:=ADODataSet1.Recordset.Fields[47].Value;
     end
     else Edit36.Text:='';
     if ADODataSet1.Recordset.Fields[49].Value<>NULL then  begin //eigth_d
      Edit37.Text:=FormatDateTime('dd.mm.yy',ADODataSet1.Recordset.Fields[49].Value);
     end
     else Edit37.Text:='';
     if ADODataSet1.Recordset.Fields[50].Value<>NULL then  begin //eigth_t
      Edit41.Text:=FormatDateTime('hh:mm',ADODataSet1.Recordset.Fields[50].Value);
     end
     else Edit41.Text:='';
     if ADODataSet1.Recordset.Fields[51].Value<>NULL then  begin //eigth_c
      Edit45.Text:=ADODataSet1.Recordset.Fields[51].Value;
     end
     else Edit45.Text:='';
     if ADODataSet1.Recordset.Fields[52].Value<>NULL then  begin //eigth_p
      Edit49.Text:=ADODataSet1.Recordset.Fields[52].Value;
     end
     else Edit49.Text:='';
     if ADODataSet1.Recordset.Fields[53].Value<>NULL then  begin //eigth_a
      Edit53.Text:=ADODataSet1.Recordset.Fields[53].Value;
     end
     else Edit53.Text:='';
     ///////////
     if ADODataSet1.Recordset.Fields[58].Value<>NULL then  begin //nineth_d
      Edit38.Text:=FormatDateTime('dd.mm.yy',ADODataSet1.Recordset.Fields[58].Value);
     end
     else Edit38.Text:='';
     if ADODataSet1.Recordset.Fields[57].Value<>NULL then  begin //nineth_t
      Edit42.Text:=FormatDateTime('hh:mm',ADODataSet1.Recordset.Fields[57].Value);
     end
     else Edit42.Text:='';
     if ADODataSet1.Recordset.Fields[56].Value<>NULL then  begin //nineth_c
      Edit46.Text:=ADODataSet1.Recordset.Fields[56].Value;
     end
     else Edit46.Text:='';
     if ADODataSet1.Recordset.Fields[55].Value<>NULL then  begin //nineth_p
      Edit50.Text:=ADODataSet1.Recordset.Fields[55].Value;
     end
     else Edit50.Text:='';
     if ADODataSet1.Recordset.Fields[54].Value<>NULL then  begin //nineth_a
      Edit54.Text:=ADODataSet1.Recordset.Fields[54].Value;
     end
     else Edit54.Text:='';
     ///////////
     if ADODataSet1.Recordset.Fields[59].Value<>NULL then  begin //tenth_d
      Edit39.Text:=FormatDateTime('dd.mm.yy',ADODataSet1.Recordset.Fields[59].Value);
     end
     else Edit39.Text:='';
     if ADODataSet1.Recordset.Fields[60].Value<>NULL then  begin //tenth_t
      Edit43.Text:=FormatDateTime('hh:mm',ADODataSet1.Recordset.Fields[60].Value);
     end
     else Edit43.Text:='';
     if ADODataSet1.Recordset.Fields[61].Value<>NULL then  begin //tenth_c
      Edit47.Text:=ADODataSet1.Recordset.Fields[61].Value;
     end
     else Edit47.Text:='';
     if ADODataSet1.Recordset.Fields[62].Value<>NULL then  begin //tenth_p
      Edit51.Text:=ADODataSet1.Recordset.Fields[62].Value;
     end
     else Edit51.Text:='';
     if ADODataSet1.Recordset.Fields[63].Value<>NULL then  begin //tenth_a
      Edit55.Text:=ADODataSet1.Recordset.Fields[63].Value;
     end
     else Edit55.Text:='';
     ///////////
     if ADODataSet1.Recordset.Fields[68].Value<>NULL then  begin //eleventh_d
      Edit40.Text:=FormatDateTime('dd.mm.yy',ADODataSet1.Recordset.Fields[68].Value);
     end
     else Edit40.Text:='';
     if ADODataSet1.Recordset.Fields[67].Value<>NULL then  begin //eleventh_t
      Edit44.Text:=FormatDateTime('hh:mm',ADODataSet1.Recordset.Fields[67].Value);
     end
     else Edit44.Text:='';
     if ADODataSet1.Recordset.Fields[66].Value<>NULL then  begin //eleventh_c
      Edit48.Text:=ADODataSet1.Recordset.Fields[66].Value;
     end
     else Edit48.Text:='';
     if ADODataSet1.Recordset.Fields[65].Value<>NULL then  begin //eleventh_p
      Edit52.Text:=ADODataSet1.Recordset.Fields[65].Value;
     end
     else Edit52.Text:='';
     if ADODataSet1.Recordset.Fields[64].Value<>NULL then  begin //eleventh_a
      Edit56.Text:=ADODataSet1.Recordset.Fields[64].Value;
     end
     else Edit56.Text:='';
     /////////
     if ADODataSet1.Recordset.Fields[69].Value<>NULL then  begin //first_m
      Edit57.Text:=ADODataSet1.Recordset.Fields[69].Value;
     end
     else Edit57.Text:='';
     if ADODataSet1.Recordset.Fields[70].Value<>NULL then  begin //second_m
      Edit58.Text:=ADODataSet1.Recordset.Fields[70].Value;
     end
     else Edit58.Text:='';
     if ADODataSet1.Recordset.Fields[71].Value<>NULL then  begin //third_m
      Edit59.Text:=ADODataSet1.Recordset.Fields[71].Value;
     end
     else Edit59.Text:='';
     if ADODataSet1.Recordset.Fields[72].Value<>NULL then  begin //fourth_m
      Edit60.Text:=ADODataSet1.Recordset.Fields[72].Value;
     end
     else Edit60.Text:='';
     if ADODataSet1.Recordset.Fields[73].Value<>NULL then  begin //fifth_m
      Edit61.Text:=ADODataSet1.Recordset.Fields[73].Value;
     end
     else Edit61.Text:='';
     if ADODataSet1.Recordset.Fields[74].Value<>NULL then  begin //sixth_m
      Edit62.Text:=ADODataSet1.Recordset.Fields[74].Value;
     end
     else Edit62.Text:='';
     if ADODataSet1.Recordset.Fields[75].Value<>NULL then  begin //seventh_m
      Edit63.Text:=ADODataSet1.Recordset.Fields[75].Value;
     end
     else Edit63.Text:='';
     if ADODataSet1.Recordset.Fields[76].Value<>NULL then  begin //eigth_m
      Edit64.Text:=ADODataSet1.Recordset.Fields[76].Value;
     end
     else Edit64.Text:='';
     if ADODataSet1.Recordset.Fields[77].Value<>NULL then  begin //nineth_m
      Edit65.Text:=ADODataSet1.Recordset.Fields[77].Value;
     end
     else Edit65.Text:='';
     if ADODataSet1.Recordset.Fields[78].Value<>NULL then  begin //tenth_m
      Edit66.Text:=ADODataSet1.Recordset.Fields[78].Value;
     end
     else Edit66.Text:='';
     if ADODataSet1.Recordset.Fields[79].Value<>NULL then  begin //eleventh_m
      Edit67.Text:=ADODataSet1.Recordset.Fields[79].Value;
     end
     else Edit67.Text:='';
     if ADODataSet1.Recordset.Fields[110].Value<>NULL then  begin //V.I.P.
      LabeledEdit13.Text:=ADODataSet1.Recordset.Fields[110].Value;
     end
     else LabeledEdit13.Text:='';
   end
   else begin
   LabeledEdit1.Text:='';
   LabeledEdit3.Text:='';
   LabeledEdit4.Text:='';
   LabeledEdit7.Text:='';
   LabeledEdit6.Text:='';
   LabeledEdit8.Text:='';
   LabeledEdit9.Text:='';
   LabeledEdit10.Text:='';
   LabeledEdit11.Text:='';
   LabeledEdit12.Text:='';
   LabeledEdit5.Text:='';
   LabeledEdit2.Text:='';
   Edit1.Text:='';
   Edit8.Text:='';
   Edit15.Text:='';
   Edit23.Text:='';
   Edit30.Text:='';
   Edit2.Text:='';
   Edit9.Text:='';
   Edit16.Text:='';
   Edit24.Text:='';
   Edit31.Text:='';
   Edit3.Text:='';
   Edit10.Text:='';
   Edit17.Text:='';
   Edit25.Text:='';
   Edit32.Text:='';
   Edit4.Text:='';
   Edit11.Text:='';
   Edit18.Text:='';
   Edit26.Text:='';
   Edit33.Text:='';
   Edit5.Text:='';
   Edit12.Text:='';
   Edit19.Text:='';
   Edit27.Text:='';
   Edit34.Text:='';
   Edit6.Text:='';
   Edit13.Text:='';
   Edit20.Text:='';
   Edit28.Text:='';
   Edit35.Text:='';
   Edit7.Text:='';
   Edit14.Text:='';
   Edit21.Text:='';
   Edit29.Text:='';
   Edit36.Text:='';
   Edit37.Text:='';
   Edit38.Text:='';
   Edit39.Text:='';
   Edit40.Text:='';
   Edit41.Text:='';
   Edit42.Text:='';
   Edit43.Text:='';
   Edit44.Text:='';
   Edit45.Text:='';
   Edit46.Text:='';
   Edit47.Text:='';
   Edit48.Text:='';
   Edit49.Text:='';
   Edit50.Text:='';
   Edit51.Text:='';
   Edit52.Text:='';
   Edit53.Text:='';
   Edit54.Text:='';
   Edit55.Text:='';
   Edit56.Text:='';
   Edit57.Text:='';
   Edit58.Text:='';
   Edit59.Text:='';
   Edit60.Text:='';
   Edit61.Text:='';
   Edit62.Text:='';
   Edit63.Text:='';
   Edit64.Text:='';
   Edit65.Text:='';
   Edit66.Text:='';
   Edit67.Text:='';
   end;
   if (Edit15.Text<>'') and (Edit23.Text<>'призовая') then begin
   Sred:=Sred + StrToInt(Edit15.Text);
   n:=n + 1;
   end;
   if (Edit16.Text<>'') and (Edit24.Text<>'призовая') then begin
   Sred:=Sred + StrToInt(Edit16.Text);
   n:=n + 1;
   end;
   if (Edit17.Text<>'') and (Edit25.Text<>'призовая') then begin
   Sred:=Sred + StrToInt(Edit17.Text);
   n:=n + 1;
   end;
   if (Edit18.Text<>'') and (Edit26.Text<>'призовая') then begin
   Sred:=Sred + StrToInt(Edit18.Text);
   n:=n + 1;
   end;
   if (Edit19.Text<>'') and (Edit27.Text<>'призовая') then begin
   Sred:=Sred + StrToInt(Edit19.Text);
   n:=n + 1;
   end;
   if (Edit20.Text<>'') and (Edit28.Text<>'призовая') then begin
   Sred:=Sred + StrToInt(Edit20.Text);
   n:=n + 1;
   end;
   if (Edit21.Text<>'') and (Edit29.Text<>'призовая') then begin
   Sred:=Sred + StrToInt(Edit21.Text);
   n:=n + 1;
   end;
   if (Edit45.Text<>'') and (Edit49.Text<>'призовая') then begin
   Sred:=Sred + StrToInt(Edit45.Text);
   n:=n + 1;
   end;
   if (Edit46.Text<>'') and (Edit50.Text<>'призовая') then begin
   Sred:=Sred + StrToInt(Edit46.Text);
   n:=n + 1;
   end;
   if (Edit47.Text<>'') and (Edit51.Text<>'призовая') then begin
   Sred:=Sred + StrToInt(Edit47.Text);
   n:=n + 1;
   end;
   if (Edit48.Text<>'') and (Edit52.Text<>'призовая') then begin
   Sred:=Sred + StrToInt(Edit48.Text);
   n:=n + 1;
   end;

   if n>0 then Sred:=Sred/n;
   Edit22.Text:= Format('%.2f', [Sred]);
   Sred:=0;
   n:=0;

end;

procedure TForm4.LabeledEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case Key of
VK_RETURN : begin
//ShowMessage('нажали enter');
//Sred:=0;
//n:=0;
if LabeledEdit2.Text<>'' then begin
   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'select * from abonenty where telefon2=:PTELEFON2'; //выбираем запись для этого телефона
   ADOCommand1.CommandType := cmdText;
   ADOCommand1.Parameters.ParamByName('PTELEFON2').Value:=LabeledEdit2.Text;
   ADODataSet1.Recordset := Execute;
   end;
PerfomRecSet(Sred);
end;
end;
VK_ESCAPE : begin
Form4.Close;
end;
end;
end;

procedure TForm4.LabeledEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin  //нажатие на поле Ф.И.О.
case Key of
VK_RETURN : begin
if LabeledEdit5.Text<>'' then begin
   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'select * from abonenty where fio like :PFIO'; //выбираем запись для этого телефона
   ADOCommand1.CommandType := cmdText;
   ADOCommand1.Parameters.ParamByName('PFIO').Value:=LabeledEdit5.Text + '%';
  //ADOCommand1.Parameters.ParamByName('PFIO').Value:='ПЕТ%';
   ADODataSet1.Recordset := Execute;
   end;
   ADODataSet1.First;
   PerfomRecSet(Sred);
 //ShowMessage('''' + LabeledEdit5.Text + '%' + '''');
end;
end;
VK_DOWN : begin
 if ADODataSet1.Recordset.RecordCount>0 then begin
  //ShowMessage(IntToStr(ADODataSet1.Recordset.RecordCount));
  ADODataSet1.Next;
  if ADODataSet1.Recordset.EOF<>true then
   PerfomRecSet(Sred)
  else ShowMessage('Последняя запись!');
 end
 else ShowMessage('Записей не найдено');
end;
VK_UP : begin
 if ADODataSet1.Recordset.RecordCount>0 then begin
  ADODataSet1.Prior;
  if ADODataSet1.Recordset.BOF<>true then
   PerfomRecSet(Sred)
  else ShowMessage('Первая запись!');
 end
 else ShowMessage('Записей не найдено');
end;
VK_ESCAPE : begin
Form4.Close;
end;
end;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin   //нажатие на кнопке Очистить
ClearEdit();

end;

procedure TForm4.Button2Click(Sender: TObject);
begin  //нажатие на кнопку Поиск
if LabeledEdit3.Text<>'' then begin
   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'select * from abonenty where kode=:PKODE'; //выбираем запись для этого абонента
   ADOCommand1.CommandType := cmdText;
   ADOCommand1.Parameters.ParamByName('PKODE').Value:=LabeledEdit3.Text;
   ADODataSet1.Recordset := Execute;
   end;
   PerfomRecSet(Sred);
  end;
end;

procedure TForm4.Button3Click(Sender: TObject);
var FlagExclusive : integer;
begin  //нажатие на кнопке Добавить
FlagExclusive:=0;
if LabeledEdit1.Text<>'' then begin
   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'select * from abonenty where telefon=:PTELEFON  or telefon2=:PTELEFON2'; //выбираем запись для этого абонента
   ADOCommand1.CommandType := cmdText;
   ADOCommand1.Parameters.ParamByName('PTELEFON').Value:=LabeledEdit1.Text;
   ADOCommand1.Parameters.ParamByName('PTELEFON2').Value:=LabeledEdit1.Text;
   ADODataSet1.Recordset := Execute;
   end;
   if ADODataSet1.Recordset.RecordCount>0 then begin
   FlagExclusive:=1;
   ShowMessage('Уже есть такой телефон!');
   end;
end;
if LabeledEdit2.Text<>'' then begin
   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'select * from abonenty where telefon=:PTELEFON  or telefon2=:PTELEFON2'; //выбираем запись для этого абонента
   ADOCommand1.CommandType := cmdText;
   ADOCommand1.Parameters.ParamByName('PTELEFON').Value:=LabeledEdit2.Text;
   ADOCommand1.Parameters.ParamByName('PTELEFON2').Value:=LabeledEdit2.Text;
   ADODataSet1.Recordset := Execute;
   end;
   if ADODataSet1.Recordset.RecordCount>0 then begin
   FlagExclusive:=1;
   ShowMessage('Уже есть такой телефон!');
   end;
end;
if LabeledEdit3.Text<>'' then begin
   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'select * from abonenty where kode=:PKODE'; //выбираем запись для этого абонента
   ADOCommand1.CommandType := cmdText;
   ADOCommand1.Parameters.ParamByName('PKODE').Value:=LabeledEdit3.Text;
  // ADOCommand1.Parameters.ParamByName('PTELEFON2').Value:=LabeledEdit2.Text;
   ADODataSet1.Recordset := Execute;
   end;
   if ADODataSet1.Recordset.RecordCount>0 then begin
   FlagExclusive:=1;
   ShowMessage('Уже есть абонент с таким кодом!');
   end;
end;

if (LabeledEdit3.Text<>'') and  (FlagExclusive=0) then begin
   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'insert into abonenty ' +
   '(telefon,kode,adres,balans,fio,telefon2) ' +
   'values (:PTELEFON,:PKODE,:PADRES,:PBALANS,:PFIO,:PTELEFON2)';
   ADOCommand1.CommandType := cmdText;
   ADOCommand1.Parameters.ParamByName('PTELEFON').Value:=LabeledEdit1.Text;
   ADOCommand1.Parameters.ParamByName('PKODE').Value:=LabeledEdit3.Text;
   ADOCommand1.Parameters.ParamByName('PADRES').Value:=LabeledEdit4.Text;
   if LabeledEdit9.Text<>'' then
   ADOCommand1.Parameters.ParamByName('PBALANS').Value:=StrToInt(LabeledEdit9.Text)
   else ADOCommand1.Parameters.ParamByName('PBALANS').Value:=0;
   ADOCommand1.Parameters.ParamByName('PFIO').Value:=LabeledEdit5.Text;
   ADOCommand1.Parameters.ParamByName('PTELEFON2').Value:=LabeledEdit2.Text;
   Execute;
   end;
end;
end;

procedure TForm4.Button5Click(Sender: TObject);
begin  //нажатие на кнопке Удалить
case MessageDlg('Удалить абонента?', mtConfirmation,mbYesNoCancel,0) of
 mrYes : begin
if LabeledEdit3.Text<>'' then begin
   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'delete from abonenty where kode=:PKODE';
   ADOCommand1.CommandType := cmdText;
   ADOCommand1.Parameters.ParamByName('PKODE').Value:=LabeledEdit3.Text;
   //ADOCommand1.Parameters.ParamByName('PTELEFON2').Value:=LabeledEdit2.Text;
   Execute;
   end;
  ClearEdit();
end;
end;
// mrNo : Close;
 mrCancel : Close;
end;

end;

procedure TForm4.ClearEdit();
begin
LabeledEdit1.Text:='';
LabeledEdit2.Text:='';
LabeledEdit3.Text:='';
LabeledEdit4.Text:='';
LabeledEdit5.Text:='';
LabeledEdit6.Text:='';
LabeledEdit7.Text:='';
LabeledEdit8.Text:='';
LabeledEdit9.Text:='';
LabeledEdit10.Text:='';
LabeledEdit11.Text:='';
LabeledEdit12.Text:='';
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
Edit5.Text:='';
Edit6.Text:='';
Edit7.Text:='';
Edit8.Text:='';
Edit9.Text:='';
Edit10.Text:='';
Edit11.Text:='';
Edit12.Text:='';
Edit13.Text:='';
Edit14.Text:='';
Edit15.Text:='';
Edit16.Text:='';
Edit17.Text:='';
Edit18.Text:='';
Edit19.Text:='';
Edit20.Text:='';
Edit21.Text:='';
Edit22.Text:='';
Edit23.Text:='';
Edit24.Text:='';
Edit25.Text:='';
Edit26.Text:='';
Edit27.Text:='';
Edit28.Text:='';
Edit29.Text:='';
Edit30.Text:='';
Edit31.Text:='';
Edit32.Text:='';
Edit33.Text:='';
Edit34.Text:='';
Edit35.Text:='';
Edit36.Text:='';
LabeledEdit13.Text:='';
end;

procedure TForm4.Button6Click(Sender: TObject);
var FlagExclusive : integer;
begin   //нажатие на кнопке Изменить
FlagExclusive:=0;
case MessageDlg('Изменить данные абонента?', mtConfirmation,mbYesNoCancel,0) of
 mrYes : begin
{if LabeledEdit3.Text<>'' then begin
   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'delete from abonenty where kode=:PKODE';
   ADOCommand1.CommandType := cmdText;
   ADOCommand1.Parameters.ParamByName('PKODE').Value:=LabeledEdit3.Text;
   Execute;
   end; }
  //ClearEdit();
if LabeledEdit1.Text<>'' then begin
   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'select * from abonenty where telefon=:PTELEFON  or telefon2=:PTELEFON2'; //выбираем запись для этого абонента
   ADOCommand1.CommandType := cmdText;
   ADOCommand1.Parameters.ParamByName('PTELEFON').Value:=LabeledEdit1.Text;
   ADOCommand1.Parameters.ParamByName('PTELEFON2').Value:=LabeledEdit1.Text;
   ADODataSet1.Recordset := Execute;
   end;
   if ADODataSet1.Recordset.RecordCount>0 then begin
    while ADODataSet1.Recordset.EOF<>true do begin
    if ADODataSet1.Recordset.Fields[2].Value=LabeledEdit3.Text then  ADODataSet1.Next
    else  FlagExclusive:=1;
    ADODataSet1.Next;
    end;
   end;
end;

if LabeledEdit2.Text<>'' then begin
   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'select * from abonenty where telefon=:PTELEFON  or telefon2=:PTELEFON2'; //выбираем запись для этого абонента
   ADOCommand1.CommandType := cmdText;
   ADOCommand1.Parameters.ParamByName('PTELEFON').Value:=LabeledEdit2.Text;
   ADOCommand1.Parameters.ParamByName('PTELEFON2').Value:=LabeledEdit2.Text;
   ADODataSet1.Recordset := Execute;
   end;
   if ADODataSet1.Recordset.RecordCount>0 then begin
    while ADODataSet1.Recordset.EOF<>true do begin
    if ADODataSet1.Recordset.Fields[2].Value=LabeledEdit3.Text then  ADODataSet1.Next
    else  FlagExclusive:=1;
    ADODataSet1.Next;
    end;
   end;
end;
if FlagExclusive=1 then ShowMessage('Уже есть такой телефон!')
else begin
if (LabeledEdit3.Text<>'')  then begin
   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'update abonenty set ' +
   'telefon=:PTELEFON where kode=:PKODE ';
   ADOCommand1.CommandType := cmdText;
   ADOCommand1.Parameters.ParamByName('PTELEFON').Value:=LabeledEdit1.Text;
   ADOCommand1.Parameters.ParamByName('PKODE').Value:=LabeledEdit3.Text;
   Execute;
   end;
end;
if (LabeledEdit3.Text<>'')  then begin
   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'update abonenty set ' +
   'telefon2=:PTELEFON2 where kode=:PKODE ';
   ADOCommand1.CommandType := cmdText;
   ADOCommand1.Parameters.ParamByName('PTELEFON2').Value:=LabeledEdit2.Text;
   ADOCommand1.Parameters.ParamByName('PKODE').Value:=LabeledEdit3.Text;
   Execute;
   end;
end;
if (LabeledEdit3.Text<>'')  then begin
   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'update abonenty set ' +
   'adres=:PADRES where kode=:PKODE ';
   ADOCommand1.CommandType := cmdText;
   ADOCommand1.Parameters.ParamByName('PADRES').Value:=LabeledEdit4.Text;
   ADOCommand1.Parameters.ParamByName('PKODE').Value:=LabeledEdit3.Text;
   Execute;
   end;
end;
if (LabeledEdit3.Text<>'')  then begin
   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'update abonenty set ' +
   'fio=:PFIO where kode=:PKODE ';
   ADOCommand1.CommandType := cmdText;
   ADOCommand1.Parameters.ParamByName('PFIO').Value:=LabeledEdit5.Text;
   ADOCommand1.Parameters.ParamByName('PKODE').Value:=LabeledEdit3.Text;
   Execute;
   end;
end;
//ShowMessage(IntToStr(Unit1.CHBALYES));
if (Unit1.CHBALYES =1) and  (LabeledEdit9.Text<>'') then begin
   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'update abonenty set ' +
   'balans=:PBAL where kode=:PKODE ';
   ADOCommand1.Parameters.ParamByName('PBAL').Value:= LabeledEdit9.Text;
   ADOCommand1.Parameters.ParamByName('PKODE').Value:=LabeledEdit3.Text;
   Execute;
   end;
end;
if (LabeledEdit3.Text<>'')  then begin
   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'update abonenty set ' +
   'vip=:PVIP where kode=:PKODE ';
   ADOCommand1.CommandType := cmdText;
   ADOCommand1.Parameters.ParamByName('PVIP').Value:=LabeledEdit13.Text;
   ADOCommand1.Parameters.ParamByName('PKODE').Value:=LabeledEdit3.Text;
   Execute;
   end;
end;

end;
end;
// mrNo : Close;
 mrCancel : Close;
end;


end;

procedure TForm4.FormShow(Sender: TObject);
begin
LabeledEdit3.SetFocus;
end;

procedure TForm4.LabeledEdit4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  slstrt : integer;
  zapr : string;
begin //нажатие на кнопку
case Key of  //нажатие на поле "адрес"
186,188,190,219,221,222,65..90 : begin
 slstrt:=LabeledEdit4.SelStart;

 zapr:= 'SELECT * FROM streets where street like ''' + LabeledEdit4.Text + '%''';
 //ShowMessage(zapr);
 with ADOCommand1 do begin       //есть ли такой код в таблице улиц
  CommandText := zapr;
  CommandType := cmdText;
  //Parameters.ParamByName('PKODE').Value := LabeledEdit4.Text;
  ADODataSet1.Recordset := Execute;
end;

if (ADODataSet1.RecordCount>0)  then begin
ADODataSet1.Recordset.MoveFirst;  //перемещаемся по рекордсету
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
  else ShowMessage('Последняя запись!');
 end
 else ShowMessage('Записей не найдено');
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
  else ShowMessage('Первая запись!');
 end
 else ShowMessage('Записей не найдено');
end;
end;
end;

end.
