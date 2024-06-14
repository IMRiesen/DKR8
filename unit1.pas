unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    ButtonCalculate: TButton;
    ButtonClear: TButton;
    ComboBox1: TComboBox;
    EditSum: TEdit;
    EditRate: TEdit;
    EditDays: TEdit;
    Image1: TImage;
    LabelRate: TLabel;
    LabelSum: TLabel;
    LabelDays: TLabel;
    MemoResult: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure ButtonCalculateClick(Sender: TObject);
    procedure ButtonClearClick(Sender: TObject);
    procedure MemoResultChange(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ButtonCalculateClick(Sender: TObject);
var
  Sum, Rate, Days, SimpleInterest, CompoundInterest, ItogResult: Double;
begin
 if ComboBox1.Text= 'Вид процента' then
 Showmessage('Выберите вид процента');
 if (EditSum.Text='') or (EditRate.Text='') or (EditDays.Text='') then
 Showmessage('Ошибка ввода')
 else
 begin
    Sum := StrToFloat(EditSum.Text);
    Rate := StrToFloat(EditRate.Text) / 100;
    Days := StrToInt(EditDays.Text);

    SimpleInterest := Sum * Rate * Days;
    CompoundInterest := Sum * Power((1 + Rate), Days) - Sum;
    if ComboBox1.Text= 'Простой процент' then
    begin
    MemoResult.Clear;
    ItogResult := Sum*(1+SimpleInterest);
    MemoResult.Lines.add('Процент = ' + Format('%f', [SimpleInterest]));
    MemoResult.Lines.add('Итоговая сумма = ' + Format('%f', [ItogResult]));
    end
    else
    begin
    MemoResult.Clear;
    ItogResult := Sum*(1+CompoundInterest);
    MemoResult.Lines.Add('Процент: ' + Format('%f', [CompoundInterest]));
    MemoResult.Lines.add('Итоговая сумма = ' + Format('%f', [ItogResult]));
    end;
 end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.ButtonClearClick(Sender: TObject);
begin
 MemoResult.Clear;
 EditSum.Clear;
 EditRate.Clear;
 EditDays.Clear;
end;

procedure TForm1.MemoResultChange(Sender: TObject);
begin
   //Wr
end;

end.
