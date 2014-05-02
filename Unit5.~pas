unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ExtCtrls;

type
  TForm5 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOCommand1: TADOCommand;
    ADODataSet1: TADODataSet;
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
    procedure FormCreate(Sender: TObject);
    procedure LabeledEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm5.FormCreate(Sender: TObject);
begin  //при создании заполняем поля формы
   with ADOCommand1 do begin
   ADOCommand1.CommandText := 'select * from zvonki where num=:PNUM';
   ADOCommand1.CommandType := cmdText;
   ADOCommand1.Parameters.ParamByName('PNUM').Value:=Form1.DBGrid2.Fields[0].AsInteger;
   ADODataSet1.Recordset := Execute;
   end;
if (ADODataSet1.RecordCount>0)  then begin //если есть такая запись
    if ADODataSet1.Recordset.Fields[0].Value<>NULL then  begin //num
      LabeledEdit1.Text:=ADODataSet1.Recordset.Fields[0].Value;
     end
     else LabeledEdit1.Text:='';
    if ADODataSet1.Recordset.Fields[1].Value<>NULL then  begin //telefon
      LabeledEdit2.Text:=ADODataSet1.Recordset.Fields[1].Value;
     end
     else LabeledEdit2.Text:='';
    if ADODataSet1.Recordset.Fields[2].Value<>NULL then  begin //kode
      LabeledEdit3.Text:=ADODataSet1.Recordset.Fields[2].Value;
     end
     else LabeledEdit3.Text:='';
    if ADODataSet1.Recordset.Fields[3].Value<>NULL then  begin //dat
      LabeledEdit4.Text:=ADODataSet1.Recordset.Fields[3].Value;
     end
     else LabeledEdit4.Text:='';
    if ADODataSet1.Recordset.Fields[4].Value<>NULL then  begin //tim
      LabeledEdit5.Text:=FormatDateTime('hh:mm',ADODataSet1.Recordset.Fields[4].Value);
     end
     else LabeledEdit5.Text:='';
    if ADODataSet1.Recordset.Fields[5].Value<>NULL then  begin //adres
      LabeledEdit6.Text:=ADODataSet1.Recordset.Fields[5].Value;
     end
     else LabeledEdit6.Text:='';
    if ADODataSet1.Recordset.Fields[6].Value<>NULL then  begin //car
      LabeledEdit7.Text:=ADODataSet1.Recordset.Fields[6].Value;
     end
     else LabeledEdit7.Text:='';
    if ADODataSet1.Recordset.Fields[7].Value<>NULL then  begin //beg
      LabeledEdit8.Text:=FormatDateTime('hh:mm',ADODataSet1.Recordset.Fields[7].Value);
     end
     else LabeledEdit8.Text:='';
    if ADODataSet1.Recordset.Fields[8].Value<>NULL then  begin //en
      LabeledEdit9.Text:=FormatDateTime('hh:mm',ADODataSet1.Recordset.Fields[8].Value);
     end
     else LabeledEdit9.Text:='';
    if ADODataSet1.Recordset.Fields[9].Value<>NULL then  begin //cost
      LabeledEdit10.Text:=ADODataSet1.Recordset.Fields[9].Value;
     end
     else LabeledEdit10.Text:='';
    if ADODataSet1.Recordset.Fields[10].Value<>NULL then  begin //priznak
      LabeledEdit11.Text:=ADODataSet1.Recordset.Fields[10].Value;
     end
     else LabeledEdit11.Text:='';
end;
end;

procedure TForm5.LabeledEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState); //нажатие на машина
begin
case Key of
VK_RETURN : begin
//ShowMessage('ENTER');
if (LabeledEdit7.Text<>'') and (Form1.DBGrid2.Fields[6].AsString<>'') then begin
//ShowMessage('поле машина заполнено');
   with ADOCommand1 do begin
   CommandText := 'UPDATE cars SET summa=summa - :PCOST WHERE num=:PNUM';
   CommandType := cmdText;
   Parameters.ParamByName('PCOST').Value:=Form1.DBGrid2.Fields[9].AsInteger;
   Parameters.ParamByName('PNUM').Value:=Form1.DBGrid2.Fields[6].AsInteger;
   Execute;
   end;
   with ADOCommand1 do begin
   CommandText := 'UPDATE cars SET summa=summa + :PCOST WHERE num=:PNUM';
   CommandType := cmdText;
   Parameters.ParamByName('PCOST').Value:=Form1.DBGrid2.Fields[9].AsInteger;
   Parameters.ParamByName('PNUM').Value:=StrToInt(LabeledEdit7.Text);
   Execute;
   end;
   with ADOCommand1 do begin
   CommandText := 'UPDATE zvonki SET car=:PCAR WHERE num=:PNUM';
   CommandType := cmdText;
   Parameters.ParamByName('PCAR').Value:=StrToInt(LabeledEdit7.Text);
   Parameters.ParamByName('PNUM').Value:=Form1.DBGrid2.Fields[0].AsInteger;
   Execute;
   end;
   with ADOCommand1 do begin
   CommandText := 'UPDATE zvonki SET adres=:PKORR WHERE num=:PNUM';
   CommandType := cmdText;
   Parameters.ParamByName('PKORR').Value:='К_М_'+Form1.DBGrid2.Fields[5].AsString;
   Parameters.ParamByName('PNUM').Value:=Form1.DBGrid2.Fields[0].AsInteger;
   Execute;
   end;
Form5.Close;
end;
end;
VK_ESCAPE : begin
//ShowMessage('ESCAPE');
Form5.Close;
end;
end;
end;

procedure TForm5.LabeledEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin    //нажатие на стоимость
case Key of
VK_RETURN : begin
if (LabeledEdit10.Text<>'') and (Form1.DBGrid2.Fields[9].AsString<>'') then begin
   with ADOCommand1 do begin
   CommandText := 'UPDATE cars SET summa=summa + :PCOST WHERE num=:PNUM';
   CommandType := cmdText;
   Parameters.ParamByName('PCOST').Value:=StrToInt(LabeledEdit10.Text)  - Form1.DBGrid2.Fields[9].AsInteger;
   Parameters.ParamByName('PNUM').Value:=Form1.DBGrid2.Fields[6].AsInteger;
   Execute;
   end;
   with ADOCommand1 do begin
   CommandText := 'UPDATE disp SET day=day + :PCOST WHERE working=1';
   CommandType := cmdText;
   Parameters.ParamByName('PCOST').Value:=StrToInt(LabeledEdit10.Text)  - Form1.DBGrid2.Fields[9].AsInteger;
   //Parameters.ParamByName('PNUM').Value:=Form1.DBGrid2.Fields[6].AsInteger;
   Execute;
   end;
   if (Form1.DBGrid2.Fields[2].AsString <>'') then begin
     with ADOCommand1 do begin
     ADOCommand1.CommandText := 'select num_f from abonenty where kode=:PKODE';
     ADOCommand1.CommandType := cmdText;
     ADOCommand1.Parameters.ParamByName('PKODE').Value:=Form1.DBGrid2.Fields[2].AsString;
     ADODataSet1.Recordset := Execute;
     end;
   // ShowMessage(IntToStr(ADODataSet1.Recordset.Fields[0].Value));
    case ADODataSet1.Recordset.Fields[0].Value of
    1 : begin
    // ShowMessage('один');
        with ADOCommand1 do begin
        CommandText := 'UPDATE abonenty SET seventh_c=seventh_c + :PCOST WHERE kode=:PKODE';
        CommandType := cmdText;
        Parameters.ParamByName('PCOST').Value:=StrToInt(LabeledEdit10.Text)  - Form1.DBGrid2.Fields[9].AsInteger;
        Parameters.ParamByName('PKODE').Value:=Form1.DBGrid2.Fields[2].AsString;
        Execute;
        end;
    end;
    2 : begin
    // ShowMessage('два');
        with ADOCommand1 do begin
        CommandText := 'UPDATE abonenty SET first_c=first_c + :PCOST WHERE kode=:PKODE';
        CommandType := cmdText;
        Parameters.ParamByName('PCOST').Value:=StrToInt(LabeledEdit10.Text)  - Form1.DBGrid2.Fields[9].AsInteger;
        Parameters.ParamByName('PKODE').Value:=Form1.DBGrid2.Fields[2].AsString;
        Execute;
        end;
    end;
    3 : begin
    // ShowMessage('три');
        with ADOCommand1 do begin
        CommandText := 'UPDATE abonenty SET second_c=second_c + :PCOST WHERE kode=:PKODE';
        CommandType := cmdText;
        Parameters.ParamByName('PCOST').Value:=StrToInt(LabeledEdit10.Text)  - Form1.DBGrid2.Fields[9].AsInteger;
        Parameters.ParamByName('PKODE').Value:=Form1.DBGrid2.Fields[2].AsString;
        Execute;
        end;
    end;
    4 : begin
    // ShowMessage('четыре');
        with ADOCommand1 do begin
        CommandText := 'UPDATE abonenty SET third_c=third_c + :PCOST WHERE kode=:PKODE';
        CommandType := cmdText;
        Parameters.ParamByName('PCOST').Value:=StrToInt(LabeledEdit10.Text)  - Form1.DBGrid2.Fields[9].AsInteger;
        Parameters.ParamByName('PKODE').Value:=Form1.DBGrid2.Fields[2].AsString;
        Execute;
        end;
    end;
    5 : begin
    // ShowMessage('пять');
        with ADOCommand1 do begin
        CommandText := 'UPDATE abonenty SET fourth_c=fourth_c + :PCOST WHERE kode=:PKODE';
        CommandType := cmdText;
        Parameters.ParamByName('PCOST').Value:=StrToInt(LabeledEdit10.Text)  - Form1.DBGrid2.Fields[9].AsInteger;
        Parameters.ParamByName('PKODE').Value:=Form1.DBGrid2.Fields[2].AsString;
        Execute;
        end;
    end;
    6 : begin
    // ShowMessage('шесть');
        with ADOCommand1 do begin
        CommandText := 'UPDATE abonenty SET fifth_c=fifth_c + :PCOST WHERE kode=:PKODE';
        CommandType := cmdText;
        Parameters.ParamByName('PCOST').Value:=StrToInt(LabeledEdit10.Text)  - Form1.DBGrid2.Fields[9].AsInteger;
        Parameters.ParamByName('PKODE').Value:=Form1.DBGrid2.Fields[2].AsString;
        Execute;
        end;
    end;
    7 : begin
    // ShowMessage('семь');
        with ADOCommand1 do begin
        CommandText := 'UPDATE abonenty SET sixth_c=sixth_c + :PCOST WHERE kode=:PKODE';
        CommandType := cmdText;
        Parameters.ParamByName('PCOST').Value:=StrToInt(LabeledEdit10.Text)  - Form1.DBGrid2.Fields[9].AsInteger;
        Parameters.ParamByName('PKODE').Value:=Form1.DBGrid2.Fields[2].AsString;
        Execute;
        end;
    end;
    end;
   end;
   with ADOCommand1 do begin
   CommandText := 'UPDATE zvonki SET cost=:PCOST WHERE num=:PNUM';
   CommandType := cmdText;
   Parameters.ParamByName('PCOST').Value:=StrToInt(LabeledEdit10.Text);
   Parameters.ParamByName('PNUM').Value:=Form1.DBGrid2.Fields[0].AsInteger;
   Execute;
   end;
   with ADOCommand1 do begin
   CommandText := 'UPDATE zvonki SET adres=:PADRES WHERE num=:PNUM';
   CommandType := cmdText;
   Parameters.ParamByName('PADRES').Value:='K_C_'+Form1.DBGrid2.Fields[5].AsString;
   Parameters.ParamByName('PNUM').Value:=Form1.DBGrid2.Fields[0].AsInteger;
   Execute;
   end;
end;
Form5.Close;
end;
VK_ESCAPE : begin
Form5.Close;
end;
end;
end;

end.
