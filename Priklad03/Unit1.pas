unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    lbVysledok: TLabel;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;



implementation

uses
  F_Nastavenie, Unit3;


{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  AMsgTyp: TMsgDlgType;
  ATlacidla: TMsgDlgButtons;
  ASprava: String;
  AVysledok: Integer;
begin
  ASprava := Edit1.Text;
  // typ spravy
  case RadioGroup1.ItemIndex of
    0:  AMsgTyp := mtWarning;
    1:  AMsgTyp := mtError;
    2:  AMsgTyp := mtInformation;
    3:  AMsgTyp := mtConfirmation;
    4:  AMsgTyp := mtCustom;
  end;
  // tlacidla
  ATlacidla := [];

  if CheckBox1.Checked then Include(ATlacidla, mbOK);
  if CheckBox2.Checked then Include(ATlacidla, mbCancel);
  if CheckBox3.Checked then Include(ATlacidla, mbYes);
  if CheckBox4.Checked then Include(ATlacidla, mbNo);
  if CheckBox5.Checked then Include(ATlacidla, mbAbort);
  if CheckBox6.Checked then Include(ATlacidla, mbRetry);
  if CheckBox7.Checked then Include(ATlacidla, mbIgnore);
  if CheckBox8.Checked then Include(ATlacidla, mbAll);
  if CheckBox9.Checked then Include(ATlacidla, mbNoToAll);
  if CheckBox10.Checked then Include(ATlacidla, mbYesToAll);
  if CheckBox11.Checked then Include(ATlacidla, mbHelp);

  AVysledok := MessageDlg(ASprava , AMsgTyp, ATlacidla, 0);
  lbVysledok.Caption := 'V�sledok = ' + IntToStr(AVysledok);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FormNastavenie.ShowModal;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Okno.Show;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  AOkno: TOkno;
begin
  AOkno := TOkno.Create(Application);
  AOkno.Show;
end;

end.



