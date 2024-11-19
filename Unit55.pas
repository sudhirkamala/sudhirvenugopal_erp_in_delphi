unit Unit55;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Data_Module_Purchase_Order;

type
  TForm55 = class(TForm)
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
  Form55: TForm55;

implementation

{$R *.dfm}




procedure TForm55.btnDeleteClick(Sender: TObject);
var iCount:Integer;
var sProjectNumber:String;

begin


//delete mode
//find the record we want to delete
//
iCount:=0;
sProjectNumber:=edtDelete.Text;

  with DMPurchaseOrder do
  begin

  TBLProject.First;

  while NOT TBLProject.EOF do
  begin
    if TBLProject['Project_NO']=sProjectNumber then
    begin
      TBLProject.delete;
      inc(iCount);
    end
    else
      TBLProject.next;
  end;

  end;
  ShowMessage(intToStr(iCount) + ' Records Deleted');

end;




procedure TForm55.btnInsertClick(Sender: TObject);
var sProjectNumber, sProjectName, sProjectStartDate, sProjectEndDate, sTypeOfProject, sRelatedCustomer:String;
var iID,iFees:Integer;
begin
//iID:=strToInt(InputBox('ID','Enter ID',''));
sProjectNumber:=InputBox('Project Number','Enter Project Number','');
sProjectName:=InputBox('Project Name','Enter Project Name','');
sProjectStartDate:=InputBox('Project Start Date','Enter Project Start Date','');
sProjectEndDate:=InputBox('Project End Date','Enter Project End Date','');
sTypeOfProject:=InputBox('Type Of Project','Enter Type Of Project','');
sRelatedCustomer:=InputBox('Related Customer','Enter Related Customer','');


if DMPurchaseOrder.TBLProject.Locate('ID',iID,[]) then
begin
  ShowMessage('The entry already exists');
end
else
  //put the DB into insert
  DMPurchaseOrder.TBLProject.Insert;


  //set our fields
  //DMBuyers.TBLBuyer['ID']:=iID;
  DMPurchaseOrder.TBLProject['Project_NO']:=sProjectNumber;
  DMPurchaseOrder.TBLProject['Project_Name']:=sProjectName;
  DMPurchaseOrder.TBLProject['Project_Start_Date']:=sProjectStartDate;
  DMPurchaseOrder.TBLProject['Project_End_Date']:=sProjectEndDate;
  DMPurchaseOrder.TBLProject['Type_Of_Project']:=sTypeOfProject;
  DMPurchaseOrder.TBLProject['Related_Customer']:=sRelatedCustomer;


  //post to the DB
  DMPurchaseOrder.TBLProject.Post;
end;





procedure TForm55.btnUpdateClick(Sender: TObject);
var sProjectNumber, sProjectEndDate:String;


begin
sProjectNumber:=edtFilter.Text;
sProjectEndDate:=edtFilter1.Text;

with DMPurchaseOrder do
begin
  TBLProject.first;
  while NOT TBLProject.EOF do
  begin
      TBLProject.Edit;
      if (TBLProject['Project_NO']=sProjectNumber) then
      begin
        TBLProject['Project_End_Date']:=sProjectEndDate;
        ShowMessage('Record Updated');
      end;
      TBLProject.Post;
      TBLProject.next;
  end;
end;

end;
end.

