program Noil_SS7_19;


uses
  Forms,
  frm_connection in 'frm_connection.pas' {connection: TDataModule},
  global in 'global.pas',
  frm_setup in 'frm_setup.pas' {frmSetup},
  frm_barra in 'frm_barra.pas' {frmBarra: TFrame},
  frm_turnos in 'frm_turnos.pas' {frmTurnos},
  Utilerias in 'Utilerias.pas',
  frm_gruposxprograma in 'frm_gruposxprograma.pas' {frmGruposxPrograma},
  frm_GruposUsuarios in 'frm_GruposUsuarios.pas' {frmGrupos},
  frm_activos in 'frm_activos.pas' {frmActivos},
  frm_programas in 'frm_programas.pas' {frmProgramas},
  frm_Kardex in 'frm_Kardex.pas' {frmKardex},
  frm_acceso in 'frm_acceso.pas' {frmacceso},
  frm_firmantes in 'frm_firmantes.pas' {frmFirmas},
  frm_usuarios in 'frm_usuarios.pas' {frmUsuarios},
  frm_residencias in 'frm_residencias.pas' {frmResidencias},
  frm_seleccion2 in 'frm_seleccion2.pas' {frmSeleccion2},
  frm_contratos in 'frm_contratos.pas' {frmContratos},
  StoHtmlHelp in 'StoHtmlHelp.pas',
  frm_Modulosxusuario in 'frm_Modulosxusuario.pas' {frmModulosxUsuario},
  Unit_Barras in 'Unit_Barras.pas',
  UnitExcel in 'UnitExcel.pas',
  UTChartMarco in 'UTChartMarco.pas',
  UTChartMouse in 'UTChartMouse.pas',
  masUtilerias in 'masUtilerias.pas',
  UFunctionsGHH in 'UFunctionsGHH.pas',
  unitmanejofondo in 'unitmanejofondo.pas',
  UnitValidaTexto in 'UnitValidaTexto.pas',
  unitActivaPop in 'unitActivaPop.pas',
  UnitGenerales in 'UnitGenerales.pas',
  UnitTablasImpactadas in 'UnitTablasImpactadas.pas',
  UnitTBotonesPermisos in 'UnitTBotonesPermisos.pas' {,
  FrmMovtoPersonalxoficio in 'FrmMovtoPersonalxoficio.pas' {FrmMovtosPersonalxoficio},
  frm_NuevoIdioma in 'frm_NuevoIdioma.pas' {frmNuevoIdioma},
  frm_nuc_Organizacion in 'frm_nuc_Organizacion.pas' {frm_nucOrganizacion},
  AcroPDFLib_TLB in 'AcroPDFLib_TLB.pas',
  frm_repositorio in 'frm_repositorio.pas' {frmrepositorio: TDataModule},
  Func_Genericas in 'Func_Genericas.pas',
  UnitMetodos in 'UnitMetodos.pas',
  UTFrmDepartamentos in 'UTFrmDepartamentos.pas' {FrmDepartamentos},
  UFrmEnviarCorreo in 'UFrmEnviarCorreo.pas' {FrmEnviarCorreo},
  Frm_PopUpImportacionPP in 'Frm_PopUpImportacionPP.pas' {FrmPopUpImportacionPP},
  ExportaExcel in 'ExportaExcel.pas',
  frm_Almacenes in 'Modulos\Flujo Materiales\frm_Almacenes.pas' {frmAlmacenes},
  frm_almacenesporcontrato in 'Modulos\Flujo Materiales\frm_almacenesporcontrato.pas' {frmAlmacenesPorContrato},
  frm_almacenesporusuario in 'Modulos\Flujo Materiales\frm_almacenesporusuario.pas' {frmAlmacenesPorUsuario},
  frm_SetupAlm in 'Modulos\Flujo Materiales\frm_SetupAlm.pas' {frmSetupAlm},
  frm_TipoMovto in 'Modulos\Flujo Materiales\frm_TipoMovto.pas' {frmMovtos},
  frm_embarcaciones in 'Modulos\Renta Diaria\frm_embarcaciones.pas' {frmEmbarcaciones},
  Frm_ImportaExportaActiv in 'Modulos\Renta Diaria\Frm_ImportaExportaActiv.pas' {FrmImportaExportaActiv},
  unt_Actividades in 'Modulos\Renta Diaria\unt_Actividades.pas',
  UnitTarifa in 'Modulos\Renta Diaria\UnitTarifa.pas',
  frm_ReportePeriodo in 'Modulos\Renta Diaria\frm_ReportePeriodo.pas' {frmReportePeriodo},
  frm_plataformas in 'frm_plataformas.pas' {frmPlataformas},
  frm_proveedores in 'Modulos\Flujo Materiales\frm_proveedores.pas' {frmProveedores},
  frm_Pernoctan in 'frm_Pernoctan.pas' {frmPernoctan},
  frm_contratosxusuario in 'frm_contratosxusuario.pas' {frmContratosxUsuario},
  frm_barraH1 in 'frm_barraH1.pas' {frmBarraH1: TFrame},
  frm_barraH2 in 'frm_barraH2.pas' {frmBarraH2: TFrame},
  frm_Empresas in 'frm_Empresas.pas' {frm_Empresa},
  frm_deptos in 'frm_deptos.pas' {frmDeptos},
  frm_catalogos_almacen in 'Modulos\Flujo Materiales\frm_catalogos_almacen.pas' {frmCatalogosAlmacen},
  frm_evaluacion in 'Modulos\Flujo Materiales\frm_evaluacion.pas' {frmEvaluacion},
  Ufrm_Loading in 'Ufrm_Loading.pas' {frm_Loading},
  UnitRH in 'Modulos\Recursos Humanos\UnitRH.pas',
  frm_materiales in 'Modulos\Flujo Materiales\frm_materiales.pas' {frmMateriales},
  Form_Esperando in 'Form_Esperando.pas' {FormEsperando},
  UFrmNotificaciones in 'Modulos\Flujo Materiales\UFrmNotificaciones.pas' {FrmNotificaciones},
  DebenuPDFLibraryAX0912_TLB in '2007-DebenuPDFLibrary\DebenuPDFLibraryAX0912_TLB.pas',
  frm_VerPDF in 'frm_VerPDF.pas' {frmVerPDF},
  UFrm_EvaluaProveedor in 'Modulos\Flujo Materiales\UFrm_EvaluaProveedor.pas' {Frm_EvaluaProveedor},
  Frm_RequisicionMaterial in 'Modulos\Flujo Materiales\Frm_RequisicionMaterial.pas' {FrmRequisicionMaterial},
  UnitReportes in 'UnitReportes.pas',
  frm_reportesRH in 'Modulos\Recursos Humanos\frm_reportesRH.pas' {frmReportesRH},
  frm_SeguimientoReq in 'Modulos\Flujo Materiales\frm_SeguimientoReq.pas' {frmSeguimientoReq},
  frm_Noil_SS7 in 'frm_Noil_SS7.pas' {frmNoil_SS7},
  frm_agregar_masivo in 'Modulos\Recursos Humanos\frm_agregar_masivo.pas' {frmAgregarMasivo},
  frm_Documentos_Reportes in 'Modulos\Recursos Humanos\frm_Documentos_Reportes.pas' {FrmDocumentos_Reportes},
  frm_agregar_masivoOP in 'Modulos\Operaciones\frm_agregar_masivoOP.pas' {frmAgregarMasivoOP},
  Frm_Asignacion in 'Modulos\Flujo Materiales\Frm_Asignacion.pas' {FrmAsignacion},
  frm_catalogos_Operaciones in 'Modulos\Operaciones\frm_catalogos_Operaciones.pas' {frmCatalogosOperacion},
  Frm_CostoAlmacen in 'Modulos\Flujo Materiales\Frm_CostoAlmacen.pas' {FrmCostoAlmacen},
  frm_ReporteControl in 'Modulos\Recursos Humanos\frm_ReporteControl.pas' {FrmReporteControl},
  frm_rptEvaluaProv in 'Modulos\Flujo Materiales\frm_rptEvaluaProv.pas' {frmRptEvaluacionProv},
  Frm_CotizacionP in 'Modulos\Flujo Materiales\Frm_CotizacionP.pas' {FrmCotizacionesP},
  frm_Proyectos in 'Modulos\Operaciones\frm_Proyectos.pas' {frmProyectos},
  frm_clientes in 'Modulos\Gerencia Administrativa\frm_clientes.pas' {frmClientes},
  frm_folios in 'frm_folios.pas' {frmFolios},
  Frm_Comentarios in 'Frm_Comentarios.pas' {FrmComentarios},
  frm_Presupuesto in 'Modulos\Operaciones\frm_Presupuesto.pas' {frmPresupuesto},
  Frm_CostoPresupuesto in 'Modulos\Operaciones\Frm_CostoPresupuesto.pas' {frmCostoPresupuesto},
  frm_usuarios_proyectos in 'frm_usuarios_proyectos.pas' {frmUsuariosXproyectos},
  frm_importaciondedatos in 'frm_importaciondedatos.pas' {frmImportaciondeDatos},
  frm_Pedidos in 'Modulos\Flujo Materiales\frm_Pedidos.pas' {frmPedidos},
  frm_FirmasNota in 'frm_FirmasNota.pas' {frmFirmasNota},
  Frm_Modal in 'Frm_Modal.pas' {FrmModal},
  frm_cotizacionCMMI in 'Modulos\Flujo Materiales\frm_cotizacionCMMI.pas' {frmCotizacionCMMI},
  frm_CentroCosto in 'Modulos\Flujo Materiales\frm_CentroCosto.pas' {frmCentroCosto},
  frm_AprobacionPagos in 'Modulos\Flujo Materiales\frm_AprobacionPagos.pas' {frmAprobacionP},
  frm_ApruebaRequisiciones in 'Modulos\Flujo Materiales\frm_ApruebaRequisiciones.pas' {frmApruebaRequisiciones},
  Frm_RequerimientosControlCalidad in 'Modulos\Flujo Materiales\Frm_RequerimientosControlCalidad.pas' {FrmRequerimientosControlCalidad},
  frm_Concentrado_InspeccionMat in 'Modulos\Flujo Materiales\frm_Concentrado_InspeccionMat.pas' {FrmConcentrado_InspeccionMat},
  frm_agregar_OrdenCompra in 'Modulos\Flujo Materiales\frm_agregar_OrdenCompra.pas' {frmAgregarMasivoOrdenCompra},
  frm_Planta in 'Modulos\Flujo Materiales\frm_Planta.pas' {frmPlanta},
  frm_CargaMaterial in 'Modulos\Flujo Materiales\frm_CargaMaterial.pas' {frmInspecciónMaterialDetalle},
  frm_GerentesPorDepartamento in 'Modulos\frm_GerentesPorDepartamento.pas' {frmGerentesPorDepartamento},
  frm_Compradores in 'Modulos\frm_Compradores.pas' {frmCompradores},
  frm_requisicion_ss7 in 'Modulos\Flujo Materiales\frm_requisicion_ss7.pas' {FrmRequisicionss7},
  frm_agregar_Requisicion in 'Modulos\Flujo Materiales\frm_agregar_Requisicion.pas' {frmAgregarMasivoRequisicion},
  UFrmIndicadores in 'Modulos\Flujo Materiales\UFrmIndicadores.pas' {FrmIndicadores},
  frm_GridFM in 'Modulos\Flujo Materiales\frm_GridFM.pas' {frmGridFM},
  frm_Pedidos_SAP_Estatus in 'Modulos\Flujo Materiales\frm_Pedidos_SAP_Estatus.pas' {frmPedidos_SAP_Estatus},
  frm_InspeccionMateriales in 'Modulos\Flujo Materiales\frm_InspeccionMateriales.pas' {FrmInspeccionMateriales},
  Frm_BancosMovimientos in 'Modulos\Gerencia Administrativa\Frm_BancosMovimientos.pas' {frmBancosMovimientos},
  frm_Buscar in 'Modulos\Presupuesto\frm_Buscar.pas' {frmBuscar},
  frm_ContratoReq in 'Modulos\Flujo Materiales\frm_ContratoReq.pas' {frmContratoReq},
  frm_OrdenTrabajo in 'Modulos\Operaciones\frm_OrdenTrabajo.pas' {frmOrdenTrabajo},
  frm_almacenamiento in 'Modulos\Flujo Materiales\frm_almacenamiento.pas' {frmAlmacenamiento},
  frm_catalogo_empleados in 'Modulos\Recursos Humanos\frm_catalogo_empleados.pas' {frmCatalogoEmpleados},
  frm_salarios in 'Modulos\Recursos Humanos\frm_salarios.pas' {frmSalarios},
  frm_rangoSalarios in 'Modulos\Recursos Humanos\frm_rangoSalarios.pas' {frmRangoSalarios},
  frm_Catalogos_rh_tipos in 'Modulos\Recursos Humanos\frm_Catalogos_rh_tipos.pas' {frmCatalogosRHTipos},
  frm_tipos_nomina in 'Modulos\Recursos Humanos\frm_tipos_nomina.pas' {frmTiposNomina},
  frm_guardias in 'Modulos\Recursos Humanos\frm_guardias.pas' {FrmGuardias},
  Frm_ConfGuardias in 'Modulos\Recursos Humanos\Frm_ConfGuardias.pas' {FrmConfGuardias},
  frm_bajar_masivo in 'Modulos\Recursos Humanos\frm_bajar_masivo.pas' {frmBajarMasivo},
  frm_contratar_masivo in 'Modulos\Recursos Humanos\frm_contratar_masivo.pas' {frmContratarMasivo},
  frm_controlComisiones in 'Modulos\Recursos Humanos\frm_controlComisiones.pas' {frmControlComision},
  Frm_PreNomina in 'Modulos\Recursos Humanos\Frm_PreNomina.pas' {FrmPreNomina},
  frm_comentarios_nomina in 'Modulos\Recursos Humanos\frm_comentarios_nomina.pas' {frmComentariosNomina},
  Frm_Nomina in 'Modulos\Recursos Humanos\Frm_Nomina.pas' {FrmNomina},
  frm_CatalogoNominas in 'Modulos\Recursos Humanos\frm_CatalogoNominas.pas' {FrmCatalogoNominas},
  frm_personal_prov in 'Modulos\Recursos Humanos\frm_personal_prov.pas' {frmPersonalProv},
  frm_EvaluaCompetencias in 'Modulos\Recursos Humanos\frm_EvaluaCompetencias.pas' {frm_EvaluaCompetencias},
  Frm_Justificar in 'Modulos\Recursos Humanos\Frm_Justificar.pas' {FrmJustificar},
  Frm_Asignar_Guardias in 'Modulos\Recursos Humanos\Frm_Asignar_Guardias.pas' {FrmAsignarGuardias},
  frm_diaslaboradosSIANI in 'Modulos\Recursos Humanos\frm_diaslaboradosSIANI.pas' {frmDiasLaboradosSIANI},
  frm_SeguroVida in 'Modulos\Recursos Humanos\frm_SeguroVida.pas' {FrmSeguroVida},
  frm_abrereporte in 'frm_abrereporte.pas' {frmAbreReporte_},
  frm_Existencia in 'Modulos\Flujo Materiales\frm_Existencia.pas' {frmExistencia},
  frm_MaterialesPO in 'Modulos\Flujo Materiales\frm_MaterialesPO.pas' {FrmMaterialesPO},
  frm_AvisoEmbarque in 'Modulos\Flujo Materiales\frm_AvisoEmbarque.pas' {frmAvisoEmbarque},
  Frm_SolicitudMaterial in 'Modulos\Flujo Materiales\Frm_SolicitudMaterial.pas' {FrmSolicitudMaterial},
  frm_Transito in 'Modulos\Flujo Materiales\frm_Transito.pas' {frmTransito},
  frm_ComprobantesFiscalesD in 'Modulos\Gerencia Administrativa\frm_ComprobantesFiscalesD.pas' {frmComprobantesFiscalesD},
  frm_VisualizaComprobanteFD in 'Modulos\Gerencia Administrativa\frm_VisualizaComprobanteFD.pas' {frmVisualizaComprobanteFD},
  frm_SolicitudDeMateriales in 'Modulos\Flujo Materiales\frm_SolicitudDeMateriales.pas' {frmSolicitudDeMateriales},
  UFrm_EvaluaProveedorCMMI in 'Modulos\Flujo Materiales\UFrm_EvaluaProveedorCMMI.pas' {Frm_EvaluaProveedorCMMI},
  frm_Pedidos_SAP in 'Modulos\Flujo Materiales\frm_Pedidos_SAP.pas' {frmPedidos_SAP},
  frm_VerDetalle_MR in 'Modulos\Flujo Materiales\frm_VerDetalle_MR.pas' {frmVerDetalleMR},
  frm_configuraMail_mensajes in 'frm_configuraMail_mensajes.pas' {frmConfiguraMail_mensajes},
  frm_Estatus_POEntradas in 'Modulos\Flujo Materiales\frm_Estatus_POEntradas.pas' {frmEstatus_POEntradas},
  frm_AvisoEmbarque_THY in 'Modulos\Flujo Materiales\frm_AvisoEmbarque_THY.pas' {frmAvisoEmbarque_THY},
  frm_EntradaAlmacen_THY in 'Modulos\Flujo Materiales\frm_EntradaAlmacen_THY.pas' {frmEntradaAlmacen_THY},
  frm_SalidaAlmacen_THY in 'Modulos\Flujo Materiales\frm_SalidaAlmacen_THY.pas' {frmSalidaAlmacen_THY},
  frm_agregar_masivoOP_THY in 'Modulos\Operaciones\frm_agregar_masivoOP_THY.pas' {frmAgregarMasivoOP_THY},
  frm_materiales_SS7 in 'Modulos\Flujo Materiales\frm_materiales_SS7.pas' {frmMateriales_SS7},
  frm_EntradaAlmacen_SS7 in 'Modulos\Flujo Materiales\frm_EntradaAlmacen_SS7.pas' {frmEntradaAlmacen_SS7},
  frm_EntradaAlmacen in 'Modulos\Flujo Materiales\frm_EntradaAlmacen.pas' {frmEntradaAlmacen},
  frm_agregar_masivoOP_SS7 in 'Modulos\Operaciones\frm_agregar_masivoOP_SS7.pas' {frmAgregarMasivoOP_SS7},
  frm_SalidaAlmacen in 'Modulos\Flujo Materiales\frm_SalidaAlmacen.pas' {frmSalidaAlmacen},
  frm_SalidaAlmacen_SS7 in 'Modulos\Flujo Materiales\frm_SalidaAlmacen_SS7.pas' {frmSalidaAlmacen_SS7},
  frm_RevisionesRequisicion in 'Modulos\Flujo Materiales\frm_RevisionesRequisicion.pas' {FrmRevisionesRequisiciones},
  frm_VerificarSs7 in 'Modulos\Recursos Humanos\frm_VerificarSs7.pas' {FrmVerificarSs7},
  FrmAsistenciaMedica in 'Modulos\Recursos Humanos\FrmAsistenciaMedica.pas' {FrmAsistenciaMed},
  frm_verificar in 'Modulos\Recursos Humanos\frm_verificar.pas' {FrmVerificar},
  frm_valida in 'frm_valida.pas' {frmValida},
  frm_valida_ss7 in 'frm_valida_ss7.pas' {frmValida_ss7},
  frm_agregar_servicios in 'Modulos\Flujo Materiales\frm_agregar_servicios.pas' {frmAgregarMasivoServicios},
  frm_abrereporte_ss7 in 'frm_abrereporte_ss7.pas' {frmAbreReporte_ss7},
  frm_agregar_Accesorios in 'Modulos\Flujo Materiales\frm_agregar_Accesorios.pas' {frmAgregarMasivoAccesorios},
  frm_EntregaEquipo in 'Modulos\Control EPP\frm_EntregaEquipo.pas' {frmEntregaEquipo},
  frm_materiales_CMMI in 'Modulos\Flujo Materiales\frm_materiales_CMMI.pas' {frmMateriales_CMMI},
  frm_servicios_CMMI in 'Modulos\Flujo Materiales\frm_servicios_CMMI.pas' {frmServicios_CMMI},
  frm_DevolucionEquipo in 'Modulos\Control EPP\frm_DevolucionEquipo.pas' {frmDevolucionEquipo},
  frm_CuentasPorPagar in 'Modulos\Gerencia Administrativa\frm_CuentasPorPagar.pas' {frmCuentasPorPagar},
  frm_AsistenciaPersonal in 'Modulos\Recursos Humanos\frm_AsistenciaPersonal.pas' {FrmAsistenciaPersonal},
  frm_agregar_personal in 'Modulos\Recursos Humanos\frm_agregar_personal.pas' {frmAgregarPersonal},
  Frm_ConfBiometrico in 'Frm_ConfBiometrico.pas' {FrmConfBiometrico},
  Frm_MaterialXCategoria in 'Modulos\Flujo Materiales\Frm_MaterialXCategoria.pas' {FrmMaterialXCategoria},
  frm_agregar_masivoOP_SSI in 'Modulos\Operaciones\frm_agregar_masivoOP_SSI.pas' {frmAgregarMasivoOP_SSI},
  frm_EntradaAlmacen_SSI in 'Modulos\Flujo Materiales\frm_EntradaAlmacen_SSI.pas' {frmEntradaAlmacen_SSI},
  frm_SalidaAlmacen_SSI in 'Modulos\Flujo Materiales\frm_SalidaAlmacen_SSI.pas' {frmSalidaAlmacen_SSI},
  frm_migrar_ordenes in 'Modulos\Renta Diaria\frm_migrar_ordenes.pas' {frmMigrar_ordenes},
  frm_catalogo_empleados_SSI in 'Modulos\Recursos Humanos\frm_catalogo_empleados_SSI.pas' {frmCatalogoEmpleadosSSI},
  frm_listado_personal in 'Modulos\Control EPP\frm_listado_personal.pas' {frmListadoPersonal},
  frm_SolicitudDetalle in 'Modulos\Flujo Materiales\frm_SolicitudDetalle.pas' {frmSolicitudDetalle},
  frm_catalogo_empleados_ss7 in 'Modulos\Recursos Humanos\frm_catalogo_empleados_ss7.pas' {frmCatalogoEmpleados_ss7};

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Sistema Noil Empresarial';
  Application.HelpFile := '';
  Application.CreateForm(Tconnection, connection);
  Application.CreateForm(TfrmNoil_SS7, frmNoil_SS7);
  Application.CreateForm(Tfrmacceso, frmacceso);
  Application.CreateForm(TfrmSeleccion2, frmSeleccion2);
  Application.CreateForm(Tfrmrepositorio, frmrepositorio);
  Application.CreateForm(Tfrm_Loading, frm_Loading);
  Application.CreateForm(TFormEsperando, FormEsperando);
  Application.Run;
end.




