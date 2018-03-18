unit CiRank;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.Mask, Data.Win.ADODB;

type
  TFRank = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn6: TBitBtn;
    GroupBox2: TGroupBox;
    Button8: TButton;
    ComboBox1: TComboBox;
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    ddd1: TMenuItem;
    N2: TMenuItem;
    DevelopmentInfo1: TMenuItem;
    ProgramInfo1: TMenuItem;
    MapSetting1: TMenuItem;
    ProgramSetting1: TMenuItem;
    DataSource1: TDataSource;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    ADOQuery1: TADOQuery;
    procedure Button8Click(Sender: TObject);
    procedure DevelopmentInfo1Click(Sender: TObject);
    procedure ProgramInfo1Click(Sender: TObject);
    procedure MapSetting1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRank: TFRank;

implementation

{$R *.dfm}

uses CiProgramInfo, Unit3, CiMapSet;

procedure TFRank.BitBtn1Click(Sender: TObject);
begin
    try
    ADOQuery1.Post;
  except
    ADOQuery1.Cancel;
    ShowMessage('저장될 사항이 없습니다.');
  end;
end;

procedure TFRank.BitBtn2Click(Sender: TObject);
begin
  ADOQuery1.Delete;
end;

procedure TFRank.BitBtn3Click(Sender: TObject);
begin
  ADOQuery1.Refresh;
end;

procedure TFRank.BitBtn4Click(Sender: TObject);
begin
  ADOQuery1.Insert;
end;

procedure TFRank.BitBtn5Click(Sender: TObject);
begin
  ADOQuery1.Cancel;
end;

procedure TFRank.Button8Click(Sender: TObject);
var
  Sh, sot: string;
begin
  if(RadioButton1.Enabled = True) then
    sh := 'ProName'
  else
    sh := 'ProCode';
  if(ComboBox1.Text = 'Ascending')then
    sot := 'Asc'
  else if(ComboBox1.Text = 'Descending')then
    sot := 'Desc';
  if((sh <> Null) and (sot <> Null))then
  begin
    with ADOQuery1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select * From DBDiproductinfo Order by ' + Sh + ' '+sot+';');
      Open;
      Active := False;
      Active := True;
      DBGrid1.Refresh;
    end;

  end
  else
    ShowMessage('잘못된 형식입니다.');
end;

procedure TFRank.DevelopmentInfo1Click(Sender: TObject);
begin
  Unit3.Form3.Show;
end;

procedure TFRank.MapSetting1Click(Sender: TObject);
begin
  CiMapSet.FMapSet.Show;
end;

procedure TFRank.ProgramInfo1Click(Sender: TObject);
begin
  FProgramInfo.Show;
end;

end.
