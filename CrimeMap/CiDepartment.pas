unit CIDepartment;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.Mask, Data.Win.ADODB;

type
  TFDepartment = class(TForm)
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
    DateTimePicker1: TDateTimePicker;
    DevelopmentInfo1: TMenuItem;
    ProgramInfo1: TMenuItem;
    MapSetting1: TMenuItem;
    ProgramSetting1: TMenuItem;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    ADOQuery1: TADOQuery;
    procedure BitBtn4Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDepartment: TFDepartment;

implementation

{$R *.dfm}

procedure TFDepartment.BitBtn1Click(Sender: TObject);
begin
  try
    ADOQuery1.Post;
  except
    ADOQuery1.Cancel;
    ShowMessage('저장될 사항이 없습니다.');
  end;

end;

procedure TFDepartment.BitBtn2Click(Sender: TObject);
begin
  ADOQuery1.Delete;
end;

procedure TFDepartment.BitBtn3Click(Sender: TObject);
begin
  ADOQuery1.Refresh;
end;

procedure TFDepartment.BitBtn4Click(Sender: TObject);
begin
  ADOQuery1.Insert;
end;

procedure TFDepartment.BitBtn5Click(Sender: TObject);
begin
  ADOQuery1.Close;
end;

procedure TFDepartment.Button8Click(Sender: TObject);
var
  sot: string;
begin
  with ADOQuery1 do
  begin
    Close;
    SQL.Clear;
    if(ComboBox1.Text = 'Ascending')then
      sot := 'Asc'
    else if(ComboBox1.Text = 'Descending')then
      sot := 'Desc';
    try
      SQL.Add('Select * From DBDepartment order by Deptcode '+sot+';');
      Open;

    except
      ShowMessage('올바른 값을 입력하시오');
    end;
  end;
end;

end.
