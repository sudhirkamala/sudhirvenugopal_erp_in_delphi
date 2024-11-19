program ERP_Purchase_Order;

uses
  Vcl.Forms,
  Unit49 in '..\..\Documents\Embarcadero\Studio\Projects\Unit49.pas' {frmMain},
  Data_Module_Purchase_Order in '..\..\Documents\Embarcadero\Studio\Projects\Data_Module_Purchase_Order.pas' {DMPurchaseOrder: TDataModule},
  Unit50 in '..\..\Documents\Embarcadero\Studio\Projects\Unit50.pas' {Form50},
  Unit51 in '..\..\Documents\Embarcadero\Studio\Projects\Unit51.pas' {Form51},
  Unit52 in '..\..\Documents\Embarcadero\Studio\Projects\Unit52.pas' {Form52},
  Unit53 in '..\..\Documents\Embarcadero\Studio\Projects\Unit53.pas' {Form53},
  Unit54 in '..\..\Documents\Embarcadero\Studio\Projects\Unit54.pas' {Form54},
  Unit55 in '..\..\Documents\Embarcadero\Studio\Projects\Unit55.pas' {Form55},
  Unit56 in '..\..\Documents\Embarcadero\Studio\Projects\Unit56.pas' {Form56},
  Unit57 in '..\..\Documents\Embarcadero\Studio\Projects\Unit57.pas' {Form57},
  Unit58 in '..\..\Documents\Embarcadero\Studio\Projects\Unit58.pas' {Form58};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDMPurchaseOrder, DMPurchaseOrder);
  Application.CreateForm(TForm50, Form50);
  Application.CreateForm(TForm51, Form51);
  Application.CreateForm(TForm52, Form52);
  Application.CreateForm(TForm53, Form53);
  Application.CreateForm(TForm54, Form54);
  Application.CreateForm(TForm55, Form55);
  Application.CreateForm(TForm56, Form56);
  Application.CreateForm(TForm57, Form57);
  Application.CreateForm(TForm58, Form58);
  Application.Run;
end.
