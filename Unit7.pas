unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm7 = class(TForm)
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    procedure FormShow(Sender: TObject);
    procedure LabeledEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm7.FormShow(Sender: TObject);
begin
LabeledEdit1.Text:=IntToStr(Unit1.NumZakClick);
LabeledEdit2.Text:= Unit1.NumTelefClick;
LabeledEdit3.Text:= Unit1.KodClick;
LabeledEdit4.Text:= Unit1.DateClick;
LabeledEdit5.Text:= Unit1.TimeClick;
LabeledEdit6.Text:= Unit1.AddrClick;
LabeledEdit7.Text:= Unit1.CarClick;
LabeledEdit8.Text:= Unit1.CostClick;
end;

procedure TForm7.LabeledEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case Key of  //������� �� ���� "�����"
VK_ESCAPE : begin
Close;
end;

end;

end;

procedure TForm7.LabeledEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case Key of  //������� �� ���� "�������"
VK_ESCAPE : begin
Close;
end;
VK_RETURN : begin

end;

end;
end;

procedure TForm7.LabeledEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case Key of  //������� �� ���� "���"
VK_ESCAPE : begin
Close;
end;

end;
end;

procedure TForm7.LabeledEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case Key of  //������� �� ���� "����"
VK_ESCAPE : begin
Close;
end;

end;
end;

procedure TForm7.LabeledEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case Key of  //������� �� ���� "�����"
VK_ESCAPE : begin
Close;
end;

end;
end;

procedure TForm7.LabeledEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case Key of  //������� �� ���� "�����"
VK_ESCAPE : begin
Close;
end;

end;
end;

procedure TForm7.LabeledEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case Key of  //������� �� ���� "������"
VK_ESCAPE : begin
Close;
end;

end;
end;

procedure TForm7.LabeledEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case Key of  //������� �� ���� "���������"
VK_ESCAPE : begin
Close;
end;

end;
end;

end.
