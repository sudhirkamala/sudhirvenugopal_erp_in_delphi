unit Unit52;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Data_Module_Purchase_Order;

type
  TForm52 = class(TForm)
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
    procedure btnInsertClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form52: TForm52;

implementation

{$R *.dfm}

procedure TForm52.btnUpdateClick(Sender: TObject);
var sCompanyName, sInvestment:String;


begin
sCompanyName:=edtFilter.Text;
sInvestment:=edtFilter1.Text;

with DMPurchaseOrder do
begin
  TBLFinance.first;
  while NOT TBLFinance.EOF do
  begin
      TBLFinance.Edit;
      if (TBLFinance['Company_Name']=sCompanyName) then
      begin
        TBLFinance['Investment']:=sInvestment;
        ShowMessage('Record Updated');
      end;
      TBLFinance.Post;
      TBLFinance.next;
  end;
end;

end;

procedure TForm52.btnDeleteClick(Sender: TObject);
var iCount:Integer;
var sCompanyName:String;

begin


//delete mode
//find the record we want to delete
//
iCount:=0;
sCompanyName:=edtDelete.Text;

  with DMPurchaseOrder do
  begin

  TBLFinance.First;

  while NOT TBLFinance.EOF do
  begin
    if TBLFinance['Company_Name']=sCompanyName then
    begin
      TBLFinance.delete;
      inc(iCount);
    end
    else
      TBLFinance.next;
  end;

  end;
  ShowMessage(intToStr(iCount) + ' Records Deleted');

end;

procedure TForm52.btnInsertClick(Sender: TObject);
var sCompanyName, sInvestment, sLoanTaken, sAssets, sAssetCost, sDebitAmount, sCreditAmount, sBalanceAmount:String;
var iID,iFees:Integer;
begin
//iID:=strToInt(InputBox('ID','Enter ID',''));
sCompanyName:=InputBox('Company Name','Enter Company Name','');
sInvestment:=InputBox('Investment','Enter Investment','');
sLoanTaken:=InputBox('Loan Taken','Enter Loan Taken','');
sAssets:=InputBox('Assets','Enter Asset Name','');
sAssetCost:=InputBox('Asset Cost','Enter Asset Cost','');
sDebitAmount:=InputBox('Debit Amount','Enter Debit Amount','');
sCreditAmount:=InputBox('Credit Amount','Enter Credit Amount','');
sBalanceAmount:=InputBox('Balance Amount','Enter Balance Amount','');

if DMPurchaseOrder.TBLFinance.Locate('ID',iID,[]) then
begin
  ShowMessage('The entry already exists');
end
else
  //put the DB into insert
  DMPurchaseOrder.TBLFinance.Insert;


  //set our fields
  //DMBuyers.TBLBuyer['ID']:=iID;
  DMPurchaseOrder.TBLFinance['Company_Name']:=sCompanyName;
  DMPurchaseOrder.TBLFinance['Investment']:=sInvestment;
  DMPurchaseOrder.TBLFinance['Loan_Taken']:=sLoanTaken;
  DMPurchaseOrder.TBLFinance['Assets']:=sAssets;
  DMPurchaseOrder.TBLFinance['Asset_Cost']:=sAssetCost;
  DMPurchaseOrder.TBLFinance['Debit_Amount']:=sDebitAmount;
  DMPurchaseOrder.TBLFinance['Credit_Amount']:=sCreditAmount;
  DMPurchaseOrder.TBLFinance['Balance_Amount']:=sBalanceAmount;


  //post to the DB
  DMPurchaseOrder.TBLFinance.Post;
  end;
end.
