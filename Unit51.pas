unit Unit51;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Data_Module_Purchase_Order;

type
  TForm51 = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    btnInsert: TButton;
    btnUpdate: TButton;
    edtFilter: TEdit;
    edtFilter1: TEdit;
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
  Form51: TForm51;

implementation

{$R *.dfm}


procedure TForm51.btnDeleteClick(Sender: TObject);
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

  TBLCustomer.First;

  while NOT TBLCustomer.EOF do
  begin
    if TBLCustomer['Customer_Number']=sCustomerNumber then
    begin
      TBLCustomer.delete;
      inc(iCount);
    end
    else
      TBLCustomer.next;
  end;

  end;
  ShowMessage(intToStr(iCount) + ' Records Deleted');


end;


procedure TForm51.btnInsertClick(Sender: TObject);

var iID, sCustomer_Number, sCustomer_Name, sPhone, sEMail, sAddress, sCustomerSince:String;

begin
//iID:=strToInt(InputBox('ID','Enter ID',''));
sCustomer_Number:=InputBox('Customer Number','Enter Customer Number','');
sCustomer_Name:=InputBox('Customer Name','Enter Customer Name','');
sPhone:=InputBox('Phone','Enter Phone','');
sEMail:=InputBox('Email','Enter Email','');
sAddress:=InputBox('Address','Enter Address','');
sCustomerSince:=InputBox('Customer Since','Enter Customer Since','');

if DMPurchaseOrder.TBLCustomer.Locate('ID',iID,[]) then
begin
  ShowMessage('The entry already exists');
end
else
  //put the DB into insert
  DMPurchaseOrder.TBLCustomer.Insert;


  //set our fields
  //DMBuyers.TBLBuyer['ID']:=iID;
  DMPurchaseOrder.TBLCustomer['Customer_Number']:=sCustomer_Number;
  DMPurchaseOrder.TBLCustomer['Customer_Name']:=sCustomer_Name;
  DMPurchaseOrder.TBLCustomer['Phone']:=sPhone;
  DMPurchaseOrder.TBLCustomer['E_Mail']:=sEMail;
  DMPurchaseOrder.TBLCustomer['Address']:=sAddress;
  DMPurchaseOrder.TBLCustomer['Customer_Since']:=sCustomerSince;

  //post to the DB
  DMPurchaseOrder.TBLCustomer.Post;
end;

procedure TForm51.btnUpdateClick(Sender: TObject);
var sPhone, sCustomerNumber:String;


begin
sCustomerNumber:=edtFilter.Text;
sPhone:=edtFilter1.Text;

with DMPurchaseOrder do
begin
  TBLCustomer.first;
  while NOT TBLCustomer.EOF do
  begin
      TBLCustomer.Edit;
      if (TBLCustomer['Customer_Number']=sCustomerNumber) then
      begin
        TBLCustomer['Phone']:=sPhone;
        ShowMessage('Record Updated');
      end;
      TBLCustomer.Post;
      TBLCustomer.next;

end;
end;
end;

end.



