unit Unit49;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Data_Module_Purchase_Order, Unit50, Unit51, Unit52, Unit53, Unit54, Unit55,
  Unit56, Unit57, Unit58;

type
  TfrmMain = class(TForm)
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
    btnInsert: TButton;
    btnUpdate: TButton;
    edtFilter: TEdit;
    edtFilter1: TEdit;
    btnDelete: TButton;
    edtDelete: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    procedure btnInsertClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btnDeleteClick(Sender: TObject);
var iCount:Integer;
var sPO_Number:String;

begin


//delete mode
//find the record we want to delete
//
iCount:=0;
sPO_Number:=edtDelete.Text;

  with DMPurchaseOrder do
  begin

  TBLPurchaseOrder.First;

  while NOT TBLPurchaseOrder.EOF do
  begin
    if TBLPurchaseOrder['PO_Number']=sPO_Number then
    begin
      TBLPurchaseOrder.delete;
      inc(iCount);
    end
    else
      TBLPurchaseOrder.next;
  end;

  end;
  ShowMessage(intToStr(iCount) + ' Records Deleted');

end;

procedure TfrmMain.btnInsertClick(Sender: TObject);
var sPO_Number, sPO_Date, sItem_Description, sPurchased_From, sAmount, sIf_Returned, sAmount_Reclaimed:String;
var iID,iFees:Integer;
begin
//iID:=strToInt(InputBox('ID','Enter ID',''));
sPO_Number:=InputBox('PO Number','Enter PO Number','');
sPO_Date:=InputBox('PO Date','Enter PO Date','');
sItem_Description:=InputBox('Item Description','Enter Item Description','');
sPurchased_From:=InputBox('Purchased From','Enter Purchased From','');
sAmount:=InputBox('Amount','Enter Amount','');
sIf_Returned:=InputBox('If Returned','Enter If Returned','');
sAmount_Reclaimed:=InputBox('Amount Reclaimed','Enter Amount Reclaimed','');

if DMPurchaseOrder.TBLPurchaseOrder.Locate('ID',iID,[]) then
begin
  ShowMessage('The entry already exists');
end
else
  //put the DB into insert
  DMPurchaseOrder.TBLPurchaseOrder.Insert;


  //set our fields
  //DMBuyers.TBLBuyer['ID']:=iID;
  DMPurchaseOrder.TBLPurchaseOrder['PO_Number']:=sPO_Number;
  DMPurchaseOrder.TBLPurchaseOrder['PO_Date']:=sPO_Date;
  DMPurchaseOrder.TBLPurchaseOrder['Item_Description']:=sItem_Description;
  DMPurchaseOrder.TBLPurchaseOrder['Purchased_From']:=sPurchased_From;
  DMPurchaseOrder.TBLPurchaseOrder['Amount']:=sAmount;
  DMPurchaseOrder.TBLPurchaseOrder['If_Returned']:=sIf_Returned;
  DMPurchaseOrder.TBLPurchaseOrder['Amount_Reclaimed']:=sAmount_Reclaimed;


  //post to the DB
  DMPurchaseOrder.TBLPurchaseOrder.Post;
end;

procedure TfrmMain.btnUpdateClick(Sender: TObject);
var sAmountReclaimed, sPO_Number:String;


begin
sPO_Number:=edtFilter.Text;
sAmountReclaimed:=edtFilter1.Text;

with DMPurchaseOrder do
begin
  TBLPurchaseOrder.first;
  while NOT TBLPurchaseOrder.EOF do
  begin
      TBLPurchaseOrder.Edit;
      if (TBLPurchaseOrder['PO_Number']=sPO_Number) then
      begin
        TBLPurchaseOrder['Amount_Reclaimed']:=sAmountReclaimed;
        ShowMessage('Record Updated');
      end;
      TBLPurchaseOrder.Post;
      TBLPurchaseOrder.next;
  end;
end;

end;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  Form50.Show;
end;

procedure TfrmMain.Button2Click(Sender: TObject);
begin
  Form51.Show;
end;

procedure TfrmMain.Button3Click(Sender: TObject);
begin
  Form52.Show;
end;

procedure TfrmMain.Button4Click(Sender: TObject);
begin
  Form53.Show;
end;

procedure TfrmMain.Button5Click(Sender: TObject);
begin
  Form54.Show;
end;

procedure TfrmMain.Button6Click(Sender: TObject);
begin
  Form55.Show;
end;

procedure TfrmMain.Button7Click(Sender: TObject);
begin
  Form56.Show;
end;

procedure TfrmMain.Button8Click(Sender: TObject);
begin
  Form57.Show;
end;

procedure TfrmMain.Button9Click(Sender: TObject);
begin
  Form58.Show;
end;

end.
