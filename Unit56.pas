unit Unit56;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Data_Module_Purchase_Order;

type
  TForm56 = class(TForm)
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
  Form56: TForm56;

implementation

{$R *.dfm}



procedure TForm56.btnDeleteClick(Sender: TObject);
var iCount:Integer;
var sProductName:String;

begin


//delete mode
//find the record we want to delete
//
iCount:=0;
sProductName:=edtDelete.Text;

  with DMPurchaseOrder do
  begin

  TBLWarehouse.First;

  while NOT TBLWarehouse.EOF do
  begin
    if TBLWarehouse['Product_Name']=sProductName then
    begin
      TBLWarehouse.delete;
      inc(iCount);
    end
    else
      TBLWarehouse.next;
  end;

  end;
  ShowMessage(intToStr(iCount) + ' Records Deleted');

end;




procedure TForm56.btnInsertClick(Sender: TObject);
var sProductName, sDateOfInduction, sDateOfDespatch, sCost, sNumberInStock, sDateOfReorder, sRemarks:String;
var iID,iFees:Integer;
begin
//iID:=strToInt(InputBox('ID','Enter ID',''));
sProductName:=InputBox('Product Name','Enter Product Name','');
sDateOfInduction:=InputBox('Date Of Induction','Enter Date Of Induction','');
sDateOfDespatch:=InputBox('Date Of Despatch','Enter Date Of Despatch','');
sCost:=InputBox('Cost','Enter Cost','');
sNumberInStock:=InputBox('Number In Stock','Enter Number In Stock','');
sDateOfReorder:=InputBox('Date Of Reorder','Enter Date Of Reorder','');
sRemarks:=InputBox('Remarks','Enter Remarks','');

if DMPurchaseOrder.TBLWarehouse.Locate('ID',iID,[]) then
begin
  ShowMessage('The entry already exists');
end
else
  //put the DB into insert
  DMPurchaseOrder.TBLWarehouse.Insert;


  //set our fields
  //DMBuyers.TBLBuyer['ID']:=iID;
  DMPurchaseOrder.TBLWarehouse['Product_Name']:=sProductName;
  DMPurchaseOrder.TBLWarehouse['Date_Of_Induction']:=sDateOfInduction;
  DMPurchaseOrder.TBLWarehouse['Date_Of_Despatch']:=sDateOfDespatch;
  DMPurchaseOrder.TBLWarehouse['Cost']:=sCost;
  DMPurchaseOrder.TBLWarehouse['Number_In_Stock']:=sNumberInStock;
  DMPurchaseOrder.TBLWarehouse['Date_Of_Reorder']:=sDateOfReorder;
  DMPurchaseOrder.TBLWarehouse['Remarks']:=sRemarks;


  //post to the DB
  DMPurchaseOrder.TBLWarehouse.Post;
end;



procedure TForm56.btnUpdateClick(Sender: TObject);
var sProductName, sDateOfReorder:String;


begin
sProductName:=edtFilter.Text;
sDateOfReorder:=edtFilter1.Text;

with DMPurchaseOrder do
begin
  TBLWarehouse.first;
  while NOT TBLWarehouse.EOF do
  begin
      TBLWarehouse.Edit;
      if (TBLWarehouse['Product_Name']=sProductName) then
      begin
        TBLWarehouse['Date_Of_Reorder']:=sDateOfReorder;
        ShowMessage('Record Updated');
      end;
      TBLWarehouse.Post;
      TBLWarehouse.next;
  end;
end;

end;
end.


