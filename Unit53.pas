unit Unit53;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Data_Module_Purchase_Order;

type
  TForm53 = class(TForm)
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
  Form53: TForm53;

implementation

{$R *.dfm}





procedure TForm53.btnDeleteClick(Sender: TObject);
var iCount:Integer;
var sEmployeeNumber:String;

begin


//delete mode
//find the record we want to delete
//
iCount:=0;
sEmployeeNumber:=edtDelete.Text;

  with DMPurchaseOrder do
  begin

  TBLAttendance.First;

  while NOT TBLAttendance.EOF do
  begin
    if TBLAttendance['Employee_NO']=sEmployeeNumber then
    begin
      TBLAttendance.delete;
      inc(iCount);
    end
    else
      TBLAttendance.next;
  end;

  end;
  ShowMessage(intToStr(iCount) + ' Records Deleted');

end;





procedure TForm53.btnInsertClick(Sender: TObject);
var sEmployeeNumber, sEmployeeName, sDateOfBirth, sDateOfInduction, sDateOfRetirement, sNumberOfDaysInService, sLeavesTakenPerMonth:String;
var iID,iFees:Integer;
begin
//iID:=strToInt(InputBox('ID','Enter ID',''));
sEmployeeNumber:=InputBox('Employee Number','Enter Employee Number','');
sEmployeeName:=InputBox('Employee Name','Enter Employee Name','');
sDateOfBirth:=InputBox('Date Of Birth','Enter Date Of Birth','');
sDateOfInduction:=InputBox('Date Of Induction','Enter Date Of Induction','');
sDateOfRetirement:=InputBox('Date Of Retirement','Enter Date Of Retirement','');
sNumberOfDaysInService:=InputBox('Number Of Days In Service','Enter Number Of Days In Service','');
sLeavesTakenPerMonth:=InputBox('Leaves Taken Per Month','Enter Amount Leaves Taken Per Month','');

if DMPurchaseOrder.TBLAttendance.Locate('ID',iID,[]) then
begin
  ShowMessage('The entry already exists');
end
else
  //put the DB into insert
  DMPurchaseOrder.TBLAttendance.Insert;


  //set our fields
  //DMBuyers.TBLBuyer['ID']:=iID;
  DMPurchaseOrder.TBLAttendance['Employee_NO']:=sEmployeeNumber;
  DMPurchaseOrder.TBLAttendance['Employee_Name']:=sEmployeeName;
  DMPurchaseOrder.TBLAttendance['Date_Of_Birth']:=sDateOfBirth;
  DMPurchaseOrder.TBLAttendance['Date_Of_Induction']:=sDateOfInduction;
  DMPurchaseOrder.TBLAttendance['Date_Of_Retirement']:=sDateOfRetirement;
  DMPurchaseOrder.TBLAttendance['Number_Of_Days_In_Service']:=sNumberOfDaysInService;
  DMPurchaseOrder.TBLAttendance['Leave_Taken_Per_Month']:=sLeavesTakenPerMonth;


  //post to the DB
  DMPurchaseOrder.TBLAttendance.Post;
end;


procedure TForm53.btnUpdateClick(Sender: TObject);
var sEmployeeNumber, sEmployeeName:String;


begin
sEmployeeNumber:=edtFilter.Text;
sEmployeeName:=edtFilter1.Text;

with DMPurchaseOrder do
begin
  TBLAttendance.first;
  while NOT TBLAttendance.EOF do
  begin
      TBLAttendance.Edit;
      if (TBLAttendance['Employee_NO']=sEmployeeNumber) then
      begin
        TBLAttendance['Employee_Name']:=sEmployeeName;
        ShowMessage('Record Updated');
      end;
      TBLAttendance.Post;
      TBLAttendance.next;
  end;
end;

end;

end.
