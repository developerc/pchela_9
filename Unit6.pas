unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    MonthCalendar1: TMonthCalendar;
    MonthCalendar2: TMonthCalendar;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation
uses Unit1;
{$R *.dfm}

procedure TForm6.FormCreate(Sender: TObject);
begin
 MonthCalendar1.Date:=Now();
 MonthCalendar2.Date:=Now();
 DateTimePicker1.Time:=Now();
 DateTimePicker2.Time:=Now();
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
Form1.Log.Clear;
Form1.Log.Lines.Add('select telefon,kode,dat,tim,adres,car,cost,priznak from zvonki where ');
Form1.Log.Lines.Add('('+'dat+tim between '''+
FormatDateTime('yyyy-mm-dd',MonthCalendar1.Date)+' '+ TimeToStr(DateTimePicker1.Time) + ''' and ''' +FormatDateTime('yyyy-mm-dd',MonthCalendar2.Date)+' '+ TimeToStr(DateTimePicker2.Time)+''')');
//'and'+ ' ' +FormatDateTime('yyyy-mm-dd',MonthCalendar2.Date)+' '+ TimeToStr(DateTimePicker2.Time)+')');
Form1.Log.Lines.Add('and ((cost > 0) or (priznak=''' + 'призовая' + '''));');
Form1.Log.Lines.Add('output to c:\report2.txt format ASCII;');
Form6.Close;
end;

end.
