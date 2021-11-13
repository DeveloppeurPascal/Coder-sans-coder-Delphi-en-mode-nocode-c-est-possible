unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.StdActns, System.Actions, FMX.ActnList, FMX.StdCtrls,
  FMX.Controls.Presentation;

type
  TForm1 = class(TForm)
    TabControl1: TTabControl;
    Page1: TTabItem;
    Page2: TTabItem;
    Page3: TTabItem;
    Page4: TTabItem;
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Button2: TButton;
    Button3: TButton;
    Label3: TLabel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Label4: TLabel;
    Button7: TButton;
    ActionList1: TActionList;
    GoToPage2: TChangeTabAction;
    GoToPage1: TChangeTabAction;
    GoToPage3: TChangeTabAction;
    GoToPage4: TChangeTabAction;
    FileExit1: TFileExit;
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
