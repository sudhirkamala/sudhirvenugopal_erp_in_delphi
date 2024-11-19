unit Data_Module_Purchase_Order;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDMPurchaseOrder = class(TDataModule)
    DBPurchaseOrderConnection: TADOConnection;
    TBLPurchaseOrder: TADOTable;
    DSPurchaseOrder: TDataSource;
    TBLWorkOrder: TADOTable;
    DSWorkOrder: TDataSource;
    TBLCustomer: TADOTable;
    DSCustomer: TDataSource;
    TBLFinance: TADOTable;
    DSFinance: TDataSource;
    TBLAttendance: TADOTable;
    DSAttendance: TDataSource;
    TBLInventory: TADOTable;
    DSInventory: TDataSource;
    TBLProject: TADOTable;
    DSProject: TDataSource;
    TBLWarehouse: TADOTable;
    DSWarehouse: TDataSource;
    TBLMarketing: TADOTable;
    DSMarketing: TDataSource;
    TBLSupplyChain: TADOTable;
    DSSupplyChain: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMPurchaseOrder: TDMPurchaseOrder;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
