unit Unit54;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Data_Module_Purchase_Order;

type
  TForm54 = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    btnInsert: TButton;
    btnUpdate: TButton;
    edtFilter: TEdit;
    edtFilter1: TEdit;
    btnDelete: TButton;
    edtDelete: TEdit;
    procedure btnInsertClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form54: TForm54;

implementation

{$R *.dfm}




procedure TForm54.btnDeleteClick(Sender: TObject);
var iCount:Integer;
var sInventoryNumber:String;

begin


//delete mode
//find the record we want to delete
//
iCount:=0;
sInventoryNumber:=edtDelete.Text;

  with DMPurchaseOrder do
  begin

  TBLInventory.First;

  while NOT TBLInventory.EOF do
  begin
    if TBLInventory['Inventory_No']=sInventoryNumber then
    begin
      TBLInventory.delete;
      inc(iCount);
    end
    else
      TBLInventory.next;
  end;

  end;
  ShowMessage(intToStr(iCount) + ' Records Deleted');

end;




procedure TForm54.btnInsertClick(Sender: TObject);
var sInventoryNumber, sItemName, sCost, sDateOfInduction, sDateOfDespatch, sNumberOfPeices, sTotalCost:String;
var iID,iFees:Integer;
begin
//iID:=strToInt(InputBox('ID','Enter ID',''));
sInventoryNumber:=InputBox('Inventory Number','Enter Inventory Number','');
sItemName:=InputBox('Item Name','Enter Item Name','');
sCost:=InputBox('Cost','Enter Cost','');
sDateOfInduction:=InputBox('Date Of Induction','Enter Date Of Induction','');
sDateOfDespatch:=InputBox('Date Of Despatch','Enter Date Of Despatch','');
sNumberOfPeices:=InputBox('Number Of Peices','Enter Number Of Peices','');
sTotalCost:=InputBox('Total Cost','Enter Total Cost','');

if DMPurchaseOrder.TBLInventory.Locate('ID',iID,[]) then
begin
  ShowMessage('The entry already exists');
end
else
  //put the DB into insert
  DMPurchaseOrder.TBLInventory.Insert;


  //set our fields
  //DMBuyers.TBLBuyer['ID']:=iID;
  DMPurchaseOrder.TBLInventory['Inventory_No']:=sInventoryNumber;
  DMPurchaseOrder.TBLInventory['Item_Name']:=sItemName;
  DMPurchaseOrder.TBLInventory['Cost']:=sCost;
  DMPurchaseOrder.TBLInventory['Date_Of_Induction']:=sDateOfInduction;
  DMPurchaseOrder.TBLInventory['Date_Of_Despatch']:=sDateOfDespatch;
  DMPurchaseOrder.TBLInventory['No_Of_Peices']:=sNumberOfPeices;
  DMPurchaseOrder.TBLInventory['Total_Cost']:=sTotalCost;


  //post to the DB
  DMPurchaseOrder.TBLInventory.Post;
end;


procedure TForm54.btnUpdateClick(Sender: TObject);
var sInventoryNumber, sItemName:String;


begin
sInventoryNumber:=edtFilter.Text;
sItemName:=edtFilter1.Text;

with DMPurchaseOrder do
begin
  TBLInventory.first;
  while NOT TBLInventory.EOF do
  begin
      TBLInventory.Edit;
      if (TBLInventory['Inventory_No']=sInventoryNumber) then
      begin
        TBLInventory['Item_Name']:=sItemName;
        ShowMessage('Record Updated');
      end;
      TBLInventory.Post;
      TBLInventory.next;
  end;
end;

end;

end.

