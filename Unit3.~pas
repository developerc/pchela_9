unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB;

type
  TForm3 = class(TForm)
    LabeledEdit1: TLabeledEdit;
    Button1: TButton;
    Button2: TButton;
    ADOCommand1: TADOCommand;
    ADODataSet1: TADODataSet;
    ADOConnection1: TADOConnection;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure LabeledEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure QueueIn(NumQueue : integer);
    procedure QueueOut(NumQueue : integer);
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  NumQueue : integer;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin    //машину в очередь
Form1.Edit1.Text:=LabeledEdit1.Text;
Close;

end;

procedure TForm3.Button2Click(Sender: TObject);
begin   //машину в таблицу машин
Form1.Edit1.Text:=LabeledEdit1.Text;
Close;
end;

procedure TForm3.QueueIn(NumQueue : integer);
begin
     with ADOCommand1 do begin       //находим запись в таблице машины
  CommandText := 'select * from cars where num=:PNUM'; //выбираем запись для этого диспетчера
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=StrToInt(LabeledEdit1.Text);
  ADODataSet1.Recordset := Execute;
  end;
 if (ADODataSet1.RecordCount>0) then  begin
 //ShowMessage('Такая машина есть!');
     with ADOCommand1 do begin       //находим запись в таблице очередь машин
  CommandText := 'select * from cqueue where car=:PCAR'; //выбираем запись для этого диспетчера
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=StrToInt(LabeledEdit1.Text);
  ADODataSet1.Recordset := Execute;
  end;
 if (ADODataSet1.RecordCount=0) then  begin
 //ShowMessage('Добавляю машину');
     with ADOCommand1 do begin       //находим запись в таблице машины
  CommandText := 'select * from cqueue order by num'; //выбираем запись для этого диспетчера
  CommandType := cmdText;
  //Parameters.ParamByName('PNUM').Value:=StrToInt(LabeledEdit1.Text);
  ADODataSet1.Recordset := Execute;
  end;
 if (ADODataSet1.RecordCount>0) then  begin
 ADODataSet1.Recordset.MoveLast;   //вставляем запись в конец
 NumQueue:=ADODataSet1.Recordset.Fields[0].Value;
 // ShowMessage(IntToStr(NumQueue));
   with ADOCommand1 do begin
  CommandText := 'INSERT INTO cqueue (num,car,state) VALUES (:PNUM,:PCAR,:PSTATE)';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=NumQueue+1;
  Parameters.ParamByName('PCAR').Value:=StrToInt(LabeledEdit1.Text);
  Parameters.ParamByName('PSTATE').Value:=1;
  Execute;
  end;
 end
 else begin //вставляем 1-ю запись
   with ADOCommand1 do begin
  CommandText := 'INSERT INTO cqueue (num,car,state) VALUES (:PNUM,:PCAR,:PSTATE)';
  CommandType := cmdText;
  Parameters.ParamByName('PNUM').Value:=0;
  Parameters.ParamByName('PCAR').Value:=StrToInt(LabeledEdit1.Text);
  Parameters.ParamByName('PSTATE').Value:=1;
  Execute;
  end;
 end;
   with Form1.ADOQuery3 do begin  //отображение очереди машин в таблице
   SQL.Clear;
   SQL.Add('select * from cqueue order by num');
   Open;
   end;
 end
 else
 ShowMessage('Такая машина уже есть в очереди!');
 end
 else
 ShowMessage('Такой машины нет в таблице машин!');
Form3.Free;
end;

procedure TForm3.QueueOut(NumQueue : integer);
begin
if Length(LabeledEdit1.Text)>0 then begin
   with ADOCommand1 do begin
  CommandText := 'DELETE FROM cqueue WHERE car=:PCAR';
  CommandType := cmdText;
  Parameters.ParamByName('PCAR').Value:=StrToInt(LabeledEdit1.Text);
  Execute;
  end;
   with Form1.ADOQuery3 do begin  //отображение очереди машин в таблице
   SQL.Clear;
   SQL.Add('select * from cqueue order by num');
   Open;
   end;
end
else
ShowMessage('Не ввели номер машины!');
Form3.Free;
end;

procedure TForm3.LabeledEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case Key of
VK_RETURN :  begin

Form1.Edit1.Text:=LabeledEdit1.Text;
Close;

end;
VK_ESCAPE : begin
Form1.Edit1.Text:='';
Close;
end;
end;
end;

end.
