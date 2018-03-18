unit CiInput;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Menus,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TForm4 = class(TForm)
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
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    GroupBox2: TGroupBox;
    Button8: TButton;
    ComboBox1: TComboBox;
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    ddd1: TMenuItem;
    MapSetting1: TMenuItem;
    ProgramSetting1: TMenuItem;
    N2: TMenuItem;
    DevelopmentInfo1: TMenuItem;
    ProgramInfo1: TMenuItem;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Edit1: TEdit;
    ComboBox2: TComboBox;
    Button1: TButton;
    Label1: TLabel;
    DBEdit4: TDBEdit;
    procedure Button8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure MapSetting1Click(Sender: TObject);
    procedure DevelopmentInfo1Click(Sender: TObject);
    procedure ProgramInfo1Click(Sender: TObject);
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
  Form4: TForm4;

implementation

{$R *.dfm}

uses CiMapSet, CiProgramInfo, Unit3;

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
    try
    ADOQuery1.Post;
  except
    ADOQuery1.Cancel;
    ShowMessage('저장될 사항이 없습니다.');
  end;
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
  ADOQuery1.Delete;
end;

procedure TForm4.BitBtn3Click(Sender: TObject);
begin
  ADOQuery1.Refresh;
end;

procedure TForm4.BitBtn4Click(Sender: TObject);
begin
  ADOQuery1.Insert;
end;

procedure TForm4.BitBtn5Click(Sender: TObject);
begin
  ADOQuery1.Cancel;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
  with ADOQuery1 do
  begin
  TRY
    Close;
    SQL.Clear;
    SQL.Add('Select * from DBDIINPUT where '+ComboBox2.Text + ' = '''+Edit1.Text+''''+';');
    Open;
  except
    ShowMessage('해당되는 값이 없습니다.');
  END;
  end;
end;

procedure TForm4.Button8Click(Sender: TObject);
var
  i:string;
begin
  if(ComboBox1.Text = 'Ascending')then
    i := 'Asc'
  else if(ComboBox1.Text = 'Descending')then
    i := 'Desc';
  with ADOQuery1 do
  begin
    close;
    SQL.Clear;
    SQL.Add('Select * From DBDIINPUT order by Indate '+i+';');
    Open;
  end;

end;

procedure TForm4.DevelopmentInfo1Click(Sender: TObject);
begin
  Unit3.Form3.Show;
end;

procedure TForm4.MapSetting1Click(Sender: TObject);
begin
  FMapSet.Show;
end;

procedure TForm4.ProgramInfo1Click(Sender: TObject);
begin
  FProgramInfo.Show;
end;

end.
