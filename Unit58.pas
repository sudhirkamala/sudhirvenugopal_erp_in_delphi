unit Unit58;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Data_Module_Purchase_Order;

type
  TForm58 = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    btnInsert: TButton;
    edtFilter: TEdit;
    edtFilter1: TEdit;
    btnUpdate: TButton;
    edtDelete: TEdit;
    btnDelete: TButton;
    procedure btnInsertClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form58: TForm58;

implementation

{$R *.dfm}


procedure TForm58.btnDeleteClick(Sender: TObject);
var iCount:Integer;
var sSupplierNumber:String;

begin


//delete mode
//find the record we want to delete
//
iCount:=0;
sSupplierNumber:=edtDelete.Text;

  with DMPurchaseOrder do
  begin

  TBLSupplyChain.First;

  while NOT TBLSupplyChain.EOF do
  begin
    if TBLSupplyChain['Supplier_No']=sSupplierNumber then
    begin
      TBLSupplyChain.delete;
      inc(iCount);
    end
    else
      TBLSupplyChain.next;
  end;

  end;
  ShowMessage(intToStr(iCount) + ' Records Deleted');

end;


procedure TForm58.btnInsertClick(Sender: TObject);
var sSupplierNumber, sProduct, sSupplierName, sSupplyDate, sPartNumber, sPartName, sAmount, sIfReturned, sAmountReclaimed:String;
var iID,iFees:Integer;
begin
//iID:=strToInt(InputBox('ID','Enter ID',''));
sSupplierNumber:=InputBox('Supplier Name','Enter Supplier Name','');
sProduct:=InputBox('Product','Enter Product','');
sSupplierName:=InputBox('Supplier Name','Enter Supplier Name','');
sSupplyDate:=InputBox('Supply Date','Enter Supply Date','');
sPartNumber:=InputBox('Part Number','Part Number','');
sPartName:=InputBox('Part Name','Enter Part Name','');
sAmount:=InputBox('Amount','Enter Amount','');
sIfReturned:=InputBox('If Returned','Enter If Returned','');
sAmountReclaimed:=InputBox('Amount Reclaimed','Enter Amount Reclaimed','');

if DMPurchaseOrder.TBLSupplyChain.Locate('ID',iID,[]) then
begin
  ShowMessage('The entry already exists');
end
else
  //put the DB into insert
  DMPurchaseOrder.TBLSupplyChain.Insert;


  //set our fields
  //DMBuyers.TBLBuyer['ID']:=iID;
  DMPurchaseOrder.TBLSupplyChain['Supplier_No']:=sSupplierNumber;
  DMPurchaseOrder.TBLSupplyChain['Product']:=sProduct;
  DMPurchaseOrder.TBLSupplyChain['Supplier_Name']:=sSupplierName;
  DMPurchaseOrder.TBLSupplyChain['Supply_Date']:=sSupplyDate;
  DMPurchaseOrder.TBLSupplyChain['Part_No']:=sPartNumber;
  DMPurchaseOrder.TBLSupplyChain['Part_Name']:=sPartName;
  DMPurchaseOrder.TBLSupplyChain['Amount']:=sAmount;
  DMPurchaseOrder.TBLSupplyChain['If_Returned']:=sIfReturned;
  DMPurchaseOrder.TBLSupplyChain['Amount_Reclaimed']:=sAmountReclaimed;


  //post to the DB
  DMPurchaseOrder.TBLSupplyChain.Post;
end;



procedure TForm58.btnUpdateClick(Sender: TObject);
var sAmountReclaimed, sSupplierNumber:String;


begin
sSupplierNumber:=edtFilter.Text;
sAmountReclaimed:=edtFilter1.Text;

with DMPurchaseOrder do
begin
  TBLSupplyChain.first;
  while NOT TBLSupplyChain.EOF do
  begin
      TBLSupplyChain.Edit;
      if (TBLSupplyChain['Supplier_No']=sSupplierNumber) then
      begin
        TBLSupplyChain['Amount_Reclaimed']:=sAmountReclaimed;
        ShowMessage('Record Updated');
      end;
      TBLSupplyChain.Post;
      TBLSupplyChain.next;
  end;
end;

end;

end.
