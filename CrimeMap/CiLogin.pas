unit CILogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.GIFImg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.DBCtrls, Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, Data.Win.ADODB, Data.DB;

type
  TFLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    CoNum: TEdit;
    CoPw: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Button2: TButton;
    ERPGroup: TComboBox;
    QryLogin: TADOQuery;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    ADOTLoginPic: TADOTable;
    Image1: TImage;
    ADOQuery1: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

{$R *.dfm}

uses Main;

procedure TFLogin.Button1Click(Sender: TObject);
var
  result: string;
  ImgStream : TMemoryStream;
begin
  with QryLogin do
  begin
    close;
    SQL.Clear;
    SQL.Add('Select * From DBPEPERSONINFO where DEPT = '''+ ERPGroup.Text +'''' +
            'and EM_NO = '''+CoNum.Text+''''+
            'and PW = '''+CoPw.Text+''''+';');
    Open;

    if(RecordCount <> 0)then
    begin
      FLogin.Hide;
      MessageDlg(FieldByName('NAME_KO').AsString + ' ' + FieldByName('RANK').AsString + '님 환영합니다.', mtInformation,[mbOk], 0);
      FMain.AdName.Caption := 'Name : '+FieldByName('NAME_KO').AsString;
      FMain.ADCoNum.Caption := 'CoNum : '+FieldByName('EM_NO').AsString;
      FMain.ADRank.Caption := 'Rank : '+FieldByName('Rank').AsString;
      FMain.AdStatus.Caption := 'Status : 업무중';
      Close;
      SQL.Clear;
      SQL.Add('Update DBPEPERSONINFO Set State = ''' +'업무중' +''''+ 'Where EM_NO = ''' + CoNum.Text + ''''+';');
      ExecSQL;
      //FMain.AdImg
      with ADOQuery1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select * from DBPePERSONINFO where EM_NO = ''' +CoNum.Text +''''+';');
        Open;
      end;
      FMain.Show;
    end
    else
      MessageDlg('유효하지 않은 정보입니다.', mtError,[mbOk], 0);
  end;
end;


procedure TFLogin.Button2Click(Sender: TObject);
var
  result: string;
begin
   result := InputBox('Find PassWord', #31 + '주민번호 뒷자리 : ', '');
  if(result<>'')then
  begin
    with QryLogin do
    begin
      Close;
      SQL.Clear;
      sql.Add('select PW From DBPEPERSONINFO where JUMIN2 = ''' + result + ''''+';');
      Open;
    end;
    if(QryLogin.RecordCount <> 0)then
      MessageDlg('당신의 비밀번호는 '+QryLogin.FieldByName('PW').AsString+' 입니다', mtInformation,[mbOk], 0)
    else
      MessageDlg('유효하지 않은 정보입니다.', mtError,[mbOk], 0);
  end;
end;


procedure TFLogin.FormCreate(Sender: TObject);
begin
  TGIFImage(Image1.Picture.Graphic).Animate := True;
end;

end.
