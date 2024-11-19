unit Unit50;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Data_Module_Purchase_Order,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TForm50 = class(TForm)
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    btnInsert: TButton;
    btnUpdate: TButton;
    btnDelete: TButton;
    edtFilter: TEdit;
    edtFilter1: TEdit;
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
  Form50: TForm50;

implementation

{$R *.dfm}

procedure TForm50.btnDeleteClick(Sender: TObject);
var iCount:Integer;
var sWO_Number:String;

begin


//delete mode
//find the record we want to delete
//
iCount:=0;
sWO_Number:=edtDelete.Text;

  with DMPurchaseOrder do
  begin

  TBLWorkOrder.First;

  while NOT TBLWorkOrder.EOF do
  begin
    if TBLWorkOrder['WO_Number']=sWO_Number then
    begin
      TBLWorkOrder.delete;
      inc(iCount);
    end
    else
      TBLWorkOrder.next;
  end;

  end;
  ShowMessage(intToStr(iCount) + ' Records Deleted');


end;

procedure TForm50.btnInsertClick(Sender: TObject);
var iID, sWO_Number, sPart_Number, sPart_Type, sPart_Of, sOrder_date, sOrderAmount, sCompletion_Date, sIf_returned, sAmount_Reclaimed:String;

begin
//iID:=strToInt(InputBox('ID','Enter ID',''));
sWO_Number:=InputBox('WO Number','Enter WO Number','');
sPart_Number:=InputBox('Part Number','Enter Part Number','');
sPart_Type:=InputBox('Part Type','Enter Part Type','');
sPart_Of:=InputBox('Part Of','Enter Part Of','');
sOrder_date:=InputBox('Order Date','Enter Order Date','');
sOrderAmount:=InputBox('Order Amount','Enter Order Amount','');
sCompletion_Date:=InputBox('Completion Date','Enter Completion Date','');
sIf_returned:=InputBox('If Returned','Enter If Returned','');
sAmount_Reclaimed:=InputBox('Amount Reclaimed','Enter Amount Reclaimed','');

if DMPurchaseOrder.TBLWorkOrder.Locate('ID',iID,[]) then
begin
  ShowMessage('The entry already exists');
end
else
  //put the DB into insert
  DMPurchaseOrder.TBLWorkOrder.Insert;


  //set our fields
  //DMBuyers.TBLBuyer['ID']:=iID;
  DMPurchaseOrder.TBLWorkOrder['WO_Number']:=sWO_Number;
  DMPurchaseOrder.TBLWorkOrder['Part_Number']:=sPart_Number;
  DMPurchaseOrder.TBLWorkOrder['Part_Type']:=sPart_Type;
  DMPurchaseOrder.TBLWorkOrder['Part_Of']:=sPart_Of;
  DMPurchaseOrder.TBLWorkOrder['Order_Date']:=sOrder_date;
  DMPurchaseOrder.TBLWorkOrder['Order_Amount']:=sOrderAmount;
  DMPurchaseOrder.TBLWorkOrder['Completion_Date']:=sCompletion_Date;
  DMPurchaseOrder.TBLWorkOrder['If_Returned']:=sIf_returned;
  DMPurchaseOrder.TBLWorkOrder['Amount_Reclaimed']:=sAmount_Reclaimed;


  //post to the DB
  DMPurchaseOrder.TBLWorkOrder.Post;
end;


procedure TForm50.btnUpdateClick(Sender: TObject);

var sIfReturned, sWO_Number:String;


begin
sWO_Number:=edtFilter.Text;
sIfReturned:=edtFilter1.Text;

with DMPurchaseOrder do
begin
  TBLWorkOrder.first;
  while NOT TBLWorkOrder.EOF do
  begin
      TBLWorkOrder.Edit;
      if (TBLWorkOrder['WO_Number']=sWO_Number) then
      begin
        TBLWorkOrder['If_Returned']:=sIfReturned;
        ShowMessage('Record Updated');
      end;
      TBLWorkOrder.Post;
      TBLWorkOrder.next;

end;
end;
end;

end.


