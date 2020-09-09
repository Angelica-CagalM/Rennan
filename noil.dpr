program Noil;


uses
  Forms,
  frm_connection in 'frm_connection.pas' {connection: TDataModule},
  frm_Noil in 'frm_Noil.pas' {frmNoil},
  global in 'global.pas',
  frm_barra in 'frm_barra.pas' {frmBarra: TFrame},
  Utilerias in 'Utilerias.pas',
  frm_acceso in 'frm_acceso.pas' {frmacceso},
  frm_seleccion2 in 'frm_seleccion2.pas' {frmSeleccion2},
  noil_TLB in 'noil_TLB.pas',
  Unit_Barras in 'Unit_Barras.pas',
  UnitExcel in 'UnitExcel.pas',
  UTChartMarco in 'UTChartMarco.pas',
  UTChartMouse in 'UTChartMouse.pas',
  masUtilerias in 'masUtilerias.pas',
  UFunctionsGHH in 'UFunctionsGHH.pas',
  UnitValidaTexto in 'UnitValidaTexto.pas',
  unitActivaPop in 'unitActivaPop.pas',
  UnitGenerales in 'UnitGenerales.pas',
  UnitTBotonesPermisos in 'UnitTBotonesPermisos.pas' {,
  FrmMovtoPersonalxoficio in 'FrmMovtoPersonalxoficio.pas' {FrmMovtosPersonalxoficio},
  frm_repositorio in 'frm_repositorio.pas' {frmrepositorio: TDataModule},
  Func_Genericas in 'Func_Genericas.pas',
  UnitMetodos in 'UnitMetodos.pas',
  Frm_PopUpImportacionPP in 'Frm_PopUpImportacionPP.pas' {FrmPopUpImportacionPP},
  ExportaExcel in 'ExportaExcel.pas',
  frm_barraH1 in 'frm_barraH1.pas' {frmBarraH1: TFrame},
  frm_barraH2 in 'frm_barraH2.pas' {frmBarraH2: TFrame},
  Ufrm_Loading in 'Ufrm_Loading.pas' {frm_Loading},
  Form_Esperando in 'Form_Esperando.pas' {FormEsperando},
  DebenuPDFLibraryAX0912_TLB in '2007-DebenuPDFLibrary\DebenuPDFLibraryAX0912_TLB.pas',
  UnitReportes in 'UnitReportes.pas';

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Sistema Noil Empresarial';
  Application.HelpFile := '';
  Application.CreateForm(Tconnection, connection);
  Application.CreateForm(TfrmNoil, frmNoil);
  Application.CreateForm(Tfrmacceso, frmacceso);
  Application.CreateForm(TfrmSeleccion2, frmSeleccion2);
  Application.CreateForm(Tfrmrepositorio, frmrepositorio);
  Application.CreateForm(Tfrm_Loading, frm_Loading);
  Application.CreateForm(TFormEsperando, FormEsperando);
  Application.Run;
end.




