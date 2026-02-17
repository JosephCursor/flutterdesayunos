import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'terminosycondiciones_model.dart';
export 'terminosycondiciones_model.dart';

class TerminosycondicionesWidget extends StatefulWidget {
  const TerminosycondicionesWidget({super.key});

  @override
  State<TerminosycondicionesWidget> createState() =>
      _TerminosycondicionesWidgetState();
}

class _TerminosycondicionesWidgetState
    extends State<TerminosycondicionesWidget> {
  late TerminosycondicionesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TerminosycondicionesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0x04FFEDD0),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: 335.0,
              height: 748.4,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primary,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5.0,
                    color: FlutterFlowTheme.of(context).secondary,
                    offset: Offset(
                      0.0,
                      1.0,
                    ),
                  )
                ],
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Text(
                            'Políticas de Privacidad y Compra',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 30.0,
                      thickness: 0.5,
                      indent: 15.0,
                      endIndent: 15.0,
                      color: FlutterFlowTheme.of(context).tertiary,
                    ),
                    SingleChildScrollView(
                      primary: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: SingleChildScrollView(
                              primary: false,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        6.0, 0.0, 6.0, 0.0),
                                    child: Text(
                                      '1. Política de Privacidad\n\nEn https://www.packagedesayunos.cl, valoramos la privacidad de nuestros clientes. Toda la información personal recopilada a través de nuestro sitio web es utilizada exclusivamente para la gestión de pedidos, facturación y mejora de nuestros servicios. Nos comprometemos a no compartir ni vender datos personales a terceros.\n\nLos datos recopilados incluyen:\n\nNombre completo\n\nDirección de entrega\n\nNúmero de contacto\n\nCorreo electrónico\n\nDatos de facturación\n\nEl uso del sitio implica la aceptación de estas políticas. En caso de dudas o solicitud de eliminación de datos, contáctanos a boxdesayunospackagedesayunos@gmail.com \n\n2. Política de Compra\n\na) Procesamiento de Pedidos\n\nLos pedidos realizados antes de las 20:00 hrs serán entregados el día siguiente según disponibilidad.\n\nLos pedidos realizados después de las 20:00 hrs serán entregados al día siguiente en horario de la tarde.\n\nLa disponibilidad de productos y horarios de entrega pueden variar según la demanda.\n\nb) Cobertura de Entregas\n\nRealizamos envíos exclusivamente dentro de      las comunas que esten disponibles en la       Región Metropolitana de Santiago.\n\nEs responsabilidad del cliente verificar que la dirección de entrega esté dentro de nuestra    zona de cobertura antes de realizar la compra.\n\nc) Cancelaciones y Devoluciones\n\nNo se aceptan devoluciones ni reembolsos por pedidos ya procesados.\n\nSe pueden realizar reembolsos solo en caso de errores en la compra o en la entrega, siempre y cuando se notifique dentro de las 2 horas posteriores a la compra al correo boxdesayunospackagedesayunos@gmail.com \n\nEn caso de error en la entrega por parte de nuestra empresa, se coordinará la reposición         o un reembolso según corresponda.\n\nd) Condiciones de Entrega\n\nEs responsabilidad del cliente proporcionar     datos precisos para la entrega.\n\nEn caso de no encontrar al destinatario en la dirección indicada, el pedido podrá ser reagendado con costo adicional por parte del cliente o retirado en nuestro punto de entrega.\n\nNo nos hacemos responsables por entregas fallidas debido a información incorrecta proporcionada por el cliente.\n\nAl realizar una compra en \nhttps://www.packagedesayunos.cl, \nel cliente acepta todas estas condiciones. Nos reservamos el derecho de actualizar estas políticas sin previo aviso.',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 13.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 20.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 0.0, 0.0),
                            child: Theme(
                              data: ThemeData(
                                checkboxTheme: CheckboxThemeData(
                                  visualDensity: VisualDensity.compact,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                                unselectedWidgetColor:
                                    FlutterFlowTheme.of(context)
                                        .primaryBackground,
                              ),
                              child: Checkbox(
                                value: _model.checkboxaceptarValue ??= false,
                                onChanged: (newValue) async {
                                  safeSetState(() =>
                                      _model.checkboxaceptarValue = newValue!);
                                },
                                side: (FlutterFlowTheme.of(context)
                                            .primaryBackground !=
                                        null)
                                    ? BorderSide(
                                        width: 2,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground!,
                                      )
                                    : null,
                                activeColor:
                                    FlutterFlowTheme.of(context).secondary,
                                checkColor: FlutterFlowTheme.of(context).info,
                              ),
                            ),
                          ),
                          Text(
                            'He leído, y al aceptar estoy de\nacuerdo con los términos y\ncondicionesde la web.',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).error,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ].divide(SizedBox(width: 5.0)),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 30.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'TERMINOSYCONDICIONES_ACEPTAR_BTN_ON_TAP');
                          if (_model.checkboxaceptarValue == true) {
                            Navigator.pop(context);
                          } else {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Importante'),
                                  content:
                                      Text('Aceptar Términos y Condiciones.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        },
                        text: 'Aceptar',
                        options: FFButtonOptions(
                          width: 175.0,
                          height: 35.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).secondary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
