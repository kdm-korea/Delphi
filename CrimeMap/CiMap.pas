unit CiMap;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TFMap = class(TForm)
    WebBrowser1: TWebBrowser;
    BitBtn1: TBitBtn;
//    procedure Button2Click(Sender: TObject);
  //  procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMap: TFMap;

implementation

{$R *.dfm}

uses Main;

procedure TFMap.BitBtn1Click(Sender: TObject);
begin
  WebBrowser1.Navigate('file:///C:\Users\KDM\Desktop\CrimeMap\Win32\Map.html');
  while WebBrowser1.ReadyState <> READYSTATE_COMPLETE do
    Application.ProcessMessages;
  WebBrowser1.Navigate('Javascript:initialize('+FMain.DBCoX.Text+','+FMain.DBCoY.Text+');');
end;
{
procedure TFMap.Button1Click(Sender: TObject);
begin
  WebBrowser1.Navigate('file:///C:\Users\KDM\Desktop\CrimeMap\Win32\Map.html');
  while WebBrowser1.ReadyState <> READYSTATE_COMPLETE do
    Application.ProcessMessages;
  WebBrowser1.Navigate('Javascript:initialize('+FMain.DBCoX.Text+','+FMain.DBCoY.Text+');');
end;

procedure TFMap.Button2Click(Sender: TObject);
begin
while WebBrowser1.ReadyState <> READYSTATE_COMPLETE do
    Application.ProcessMessages;
  WebBrowser1.Navigate('Javascript:StreetViewOn();');
end;
 }

procedure TFMap.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 // Action := caFree;
end;

end.
