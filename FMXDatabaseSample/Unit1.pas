unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Actions,
  FMX.ActnList, FMX.TabControl, Unit2, System.Rtti, FMX.Grid.Style,
  Data.Bind.Controls, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, FMX.StdCtrls, FMX.Layouts,
  Fmx.Bind.Navigator, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Grid,
  FMX.Edit;

type
  TForm1 = class(TForm)
    TabControl1: TTabControl;
    PageCustomers: TTabItem;
    PageOrders: TTabItem;
    PageOrderDetails: TTabItem;
    ActionList1: TActionList;
    StringGrid1: TStringGrid;
    BindNavigator1: TBindNavigator;
    Button1: TButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    StringGrid2: TStringGrid;
    BindNavigator2: TBindNavigator;
    Button2: TButton;
    Button3: TButton;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    StringGrid3: TStringGrid;
    BindNavigator3: TBindNavigator;
    Button4: TButton;
    Button5: TButton;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    Label1: TLabel;
    Edit1: TEdit;
    BindSourceDB4: TBindSourceDB;
    LinkControlToField1: TLinkControlToField;
    GoCustomers: TChangeTabAction;
    GoOrders: TChangeTabAction;
    GoOrderDetails: TChangeTabAction;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

end.
