program Project46;

uses
  Vcl.Forms,
  Unit49 in 'Unit49.pas' {frmMain},
  Unit48 in '..\..\Documents\Embarcadero\Studio\Projects\Unit48.pas' {DMPurchaseOrder: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDMPurchaseOrder, DMPurchaseOrder);
  Application.Run;
end.
