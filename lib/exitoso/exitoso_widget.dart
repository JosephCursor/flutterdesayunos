import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'exitoso_model.dart';
export 'exitoso_model.dart';

class ExitosoWidget extends StatefulWidget {
  const ExitosoWidget({super.key});

  static String routeName = 'exitoso';
  static String routePath = '/exitoso';

  @override
  State<ExitosoWidget> createState() => _ExitosoWidgetState();
}

class _ExitosoWidgetState extends State<ExitosoWidget> {
  late ExitosoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExitosoModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'exitoso'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('EXITOSO_PAGE_exitoso_ON_INIT_STATE');
      for (int loop1Index = 0;
          loop1Index < FFAppState().ListadeCarrito.length;
          loop1Index++) {
        final currentLoop1Item = FFAppState().ListadeCarrito[loop1Index];
        _model.accion1 = await ProductosTable().queryRows(
          queryFn: (q) => q.eqOrNull(
            'id',
            currentLoop1Item.productoId,
          ),
        );
        await ProductosTable().update(
          data: {
            'cantidad': (_model.accion1!.firstOrNull!.cantidad!) -
                currentLoop1Item.cantidad,
          },
          matchingRows: (rows) => rows
              .eqOrNull(
                'id',
                currentLoop1Item.productoId,
              )
              .gteOrNull(
                'cantidad',
                currentLoop1Item.cantidad,
              ),
        );
      }
      await EmailSendCall.call(
        de: 'Mi Empresa\" <boxdesayunospackagedesayunos@packagedesayunos.cl>',
        para: 'boxdesayunospackagedesayunos@gmail.com',
        asunto: 'Pedido Confirmado',
        mensaje: functions.generarMensajePedidoEmail(
            FFAppState().ListadeCarrito.toList(),
            ClienteStructStruct(
              nombresCliente: FFAppState().nombrecliente,
              telefono: FFAppState().telefono,
              direccion1: FFAppState().direccion1,
              direccion2: FFAppState().direccion2,
              fechadeentrega: FFAppState().Fechadeentrega,
            ),
            CostoenvioStruct(
              valorenvio: FFAppState().valordelEnvio,
            )),
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'exitoso',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: PopScope(
            canPop: false,
            child: Scaffold(
              key: scaffoldKey,
              resizeToAvoidBottomInset: false,
              backgroundColor: FlutterFlowTheme.of(context).primary,
              body: Stack(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Container(
                            width: 360.0,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 30.0, 40.0),
                                    child: Lottie.asset(
                                      'assets/jsons/Success.json',
                                      width: 220.0,
                                      height: 250.0,
                                      fit: BoxFit.cover,
                                      frameRate: FrameRate(60.0),
                                      reverse: true,
                                      animate: true,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 20.0),
                                      child: Text(
                                        'La transacción ha sido un éxito.  \nPara confirmar su pedido, presione en:  \n\"Confirmar vía WhatsApp\"',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              fontSize: 22.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 60.0),
                                      child: Text(
                                        'Si no presiona en  \n\"Confirmar vía WhatsApp\",  \nsu pedido puede que no le llegue.',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              fontSize: 19.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 20.0)),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 50.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'EXITOSO_CONFIRMAR_VA_WHATS_APP_BTN_ON_TA');
                                      await launchURL(
                                          functions.generarUrlPedido(
                                              FFAppState()
                                                  .ListadeCarrito
                                                  .toList(),
                                              ClienteStructStruct(
                                                nombresCliente:
                                                    FFAppState().nombrecliente,
                                                telefono: FFAppState().telefono,
                                                direccion1:
                                                    FFAppState().direccion1,
                                                direccion2:
                                                    FFAppState().direccion2,
                                                fechadeentrega:
                                                    FFAppState().Fechadeentrega,
                                              ),
                                              CostoenvioStruct(
                                                valorenvio:
                                                    FFAppState().valordelEnvio,
                                              )));
                                      FFAppState().ListadeCarrito = [];
                                      safeSetState(() {});

                                      context.goNamed(
                                          PaginaprincipalWidget.routeName);
                                    },
                                    text: 'Confirmar vía WhatsApp',
                                    options: FFButtonOptions(
                                      width: 350.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            font: GoogleFonts.interTight(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(30.0),
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
                ],
              ),
            ),
          ),
        ));
  }
}
