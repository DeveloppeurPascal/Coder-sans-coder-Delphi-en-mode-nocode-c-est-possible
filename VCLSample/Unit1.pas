unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, System.Actions, Vcl.ActnList,
  Vcl.ExtActns, Vcl.ExtCtrls, Vcl.StdCtrls, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Sqlite_demoConnection: TFDConnection;
    CustomersTable: TFDQuery;
    dsClients: TDataSource;
    btnCommandes: TButton;
    Panel1: TPanel;
    ActionList1: TActionList;
    TabNextTab1: TNextTab;
    OrdersTable: TFDQuery;
    dsOrders: TDataSource;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    DBNavigator2: TDBNavigator;
    btnClients: TButton;
    btnLignes: TButton;
    TabPreviousTab1: TPreviousTab;
    DBGrid3: TDBGrid;
    Panel3: TPanel;
    btnRetourClients: TButton;
    DBNavigator3: TDBNavigator;
    btnRetourCommandes: TButton;
    OrderdetailsTable: TFDQuery;
    dsOrderDetail: TDataSource;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
