unit Unit57;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids, Data_Module_Purchase_Order;

type
  TForm57 = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    btnInsert: TButton;
    edtFilter: TEdit;
    edtFilter1: TEdit;
    btnUpdate: TButton;
    edtDelete: TEdit;
    btnDelete: TButton;
    procedure btnDeleteClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form57: TForm57;

implementation

{$R *.dfm}

procedure TForm57.btnDeleteClick(Sender: TObject);
var iCount:Integer;
var sCustomerNumber:String;

begin


//delete mode
//find the record we want to delete
//
iCount:=0;
sCustomerNumber:=edtDelete.Text;

  with DMPurchaseOrder do
  begin

  TBLMarketing.First;

  while NOT TBLMarketing.EOF do
  begin
    if TBLMarketing['Customer_No']=sCustomerNumber then
    begin
      TBLMarketing.delete;
      inc(iCount);
    end
    else
      TBLMarketing.next;
  end;

  end;
  ShowMessage(intToStr(iCount) + ' Records Deleted');

end;


procedure TForm57.btnInsertClick(Sender: TObject);
var sCustomerNumber, sItemMarketed, sCost, sNumberOfProducts, sTotalCost, sBrandName, sSalesExecutiveName, sIncentive:String;
var iID,iFees:Integer;
begin
//iID:=strToInt(InputBox('ID','Enter ID',''));
sCustomerNumber:=InputBox('Customer Number','Enter Customer Number','');
sItemMarketed:=InputBox('Item Marketed','Enter Item Marketed','');
sCost:=InputBox('Cost','Enter Cost','');
sNumberOfProducts:=InputBox('Number Of Products','Enter Number Of Products','');
sTotalCost:=InputBox('Total Cost','Enter Total Cost','');
sBrandName:=InputBox('Brand Name','Enter Brand Name','');
sSalesExecutiveName:=InputBox('Sales Executive Name','Enter Sales Executive Name','');
sIncentive:=InputBox('Incentive','Enter Incentive','');

if DMPurchaseOrder.TBLMarketing.Locate('ID',iID,[]) then
begin
  ShowMessage('The entry already exists');
end
else
  //put the DB into insert
  DMPurchaseOrder.TBLMarketing.Insert;


  //set our fields
  //DMBuyers.TBLBuyer['ID']:=iID;
  DMPurchaseOrder.TBLMarketing['Customer_No']:=sCustomerNumber;
  DMPurchaseOrder.TBLMarketing['Item_Marketed']:=sItemMarketed;
  DMPurchaseOrder.TBLMarketing['Cost']:=sCost;
  DMPurchaseOrder.TBLMarketing['Number_Of_Products']:=sNumberOfProducts;
  DMPurchaseOrder.TBLMarketing['Total_Cost']:=sTotalCost;
  DMPurchaseOrder.TBLMarketing['Brand_Name']:=sBrandName;
  DMPurchaseOrder.TBLMarketing['Sales_Executive_Name']:=sSalesExecutiveName;
  DMPurchaseOrder.TBLMarketing['Incentive']:=sIncentive;


  //post to the DB
  DMPurchaseOrder.TBLMarketing.Post;
end;


procedure TForm57.btnUpdateClick(Sender: TObject);
var sCustomerNumber, sItemMarketed:String;


begin
sCustomerNumber:=edtFilter.Text;
sItemMarketed:=edtFilter1.Text;

with DMPurchaseOrder do
begin
  TBLMarketing.first;
  while NOT TBLMarketing.EOF do
  begin
      TBLMarketing.Edit;
      if (TBLMarketing['Customer_No']=sCustomerNumber) then
      begin
        TBLMarketing['Item_Marketed']:=sItemMarketed;
        ShowMessage('Record Updated');
      end;
      TBLMarketing.Post;
      TBLMarketing.next;
  end;
end;

end;
end.






