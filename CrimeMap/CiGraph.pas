unit CiGraph;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, VCLTee.TeeData, Vcl.ExtCtrls,
  Vcl.ButtonGroup, Vcl.CheckLst, Vcl.StdCtrls, Vcl.ComCtrls, VclTee.TeeGDIPlus,
  Data.Win.ADODB, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart,
  VCLTee.DBChart, VCLTee.TeeDBCrossTab, VCLTee.TeeFunci;

type
  TFGraph = class(TForm)
    DBChart1: TDBChart;
    ADOTable1: TADOTable;
    TeeFunction1: TSubtractTeeFunction;
    DBCrossTabSource1: TDBCrossTabSource;
    Series1: TBarSeries;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGraph: TFGraph;

implementation

{$R *.dfm}

uses Main;

end.
