import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'direcciones_model.dart';
export 'direcciones_model.dart';

class DireccionesWidget extends StatefulWidget {
  const DireccionesWidget({super.key});

  @override
  State<DireccionesWidget> createState() => _DireccionesWidgetState();
}

class _DireccionesWidgetState extends State<DireccionesWidget> {
  late DireccionesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DireccionesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
              height: 586.0,
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
                  children: [
                    Container(
                      width: 355.0,
                      height: 520.0,
                      decoration: BoxDecoration(),
                      child: SingleChildScrollView(
                        primary: false,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Text(
                                      'Mas Ingredientes Adicionales',
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
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
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
                            Divider(
                              height: 20.0,
                              thickness: 0.5,
                              indent: 15.0,
                              endIndent: 15.0,
                              color: FlutterFlowTheme.of(context).tertiary,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: SingleChildScrollView(
                                primary: false,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue1 ??=
                                                FFAppState().direccion1 ==
                                                    FFAppState().ElBosque,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .checkboxValue1 = newValue!);
                                              if (newValue!) {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_26fwqgoe_ON_TOGGLE_');
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 450,
                                                  ),
                                                );
                                                FFAppState().direccion1 =
                                                    FFAppState().ElBosque;
                                                FFAppState().valordelEnvio =
                                                    FFAppState().ElbosqueN;
                                                safeSetState(() {});
                                                Navigator.pop(context);
                                              } else {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_26fwqgoe_ON_TOGGLE_');
                                                FFAppState().direccion1 = '';
                                                FFAppState().valordelEnvio =
                                                    0.0;
                                                safeSetState(() {});
                                              }
                                            },
                                            side: (FlutterFlowTheme.of(context)
                                                        .secondary !=
                                                    null)
                                                ? BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary!,
                                                  )
                                                : null,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                          ),
                                        ),
                                        Text(
                                          'El Bosque',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                        Text(
                                          ' / 3.000 CLP',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue2 ??=
                                                FFAppState().direccion1 ==
                                                    FFAppState().LaCisterna,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .checkboxValue2 = newValue!);
                                              if (newValue!) {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_03fwi2so_ON_TOGGLE_');
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 450,
                                                  ),
                                                );
                                                FFAppState().direccion1 =
                                                    FFAppState().LaCisterna;
                                                FFAppState().valordelEnvio =
                                                    FFAppState().LacisternaN;
                                                _model.updatePage(() {});
                                                Navigator.pop(context);
                                              } else {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_03fwi2so_ON_TOGGLE_');
                                                FFAppState().direccion1 = '';
                                                FFAppState().valordelEnvio =
                                                    0.0;
                                                safeSetState(() {});
                                              }
                                            },
                                            side: (FlutterFlowTheme.of(context)
                                                        .secondary !=
                                                    null)
                                                ? BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary!,
                                                  )
                                                : null,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                          ),
                                        ),
                                        Text(
                                          'La Cisterna',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                        Text(
                                          ' /3.000 CLP',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue3 ??=
                                                FFAppState().direccion1 ==
                                                    FFAppState().SanRamn,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .checkboxValue3 = newValue!);
                                              if (newValue!) {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_brw8smfs_ON_TOGGLE_');
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 450,
                                                  ),
                                                );
                                                FFAppState().direccion1 =
                                                    FFAppState()
                                                        .SanRamonN
                                                        .toString();
                                                FFAppState().valordelEnvio =
                                                    FFAppState().SanRamonN;
                                                _model.updatePage(() {});
                                                Navigator.pop(context);
                                              } else {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_brw8smfs_ON_TOGGLE_');
                                                FFAppState().direccion1 = '';
                                                FFAppState().valordelEnvio =
                                                    0.0;
                                                safeSetState(() {});
                                              }
                                            },
                                            side: (FlutterFlowTheme.of(context)
                                                        .secondary !=
                                                    null)
                                                ? BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary!,
                                                  )
                                                : null,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                          ),
                                        ),
                                        Text(
                                          'San Ramón',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                        Text(
                                          ' / 3.000 CLP',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue4 ??=
                                                FFAppState().direccion1 ==
                                                    FFAppState().SanBernardo,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .checkboxValue4 = newValue!);
                                              if (newValue!) {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_nwzkkhmd_ON_TOGGLE_');
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 450,
                                                  ),
                                                );
                                                FFAppState().direccion1 =
                                                    FFAppState().SanBernardo;
                                                FFAppState().valordelEnvio =
                                                    FFAppState().SanBernardoN;
                                                _model.updatePage(() {});
                                                Navigator.pop(context);
                                              } else {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_nwzkkhmd_ON_TOGGLE_');
                                                FFAppState().direccion1 = '';
                                                FFAppState().valordelEnvio =
                                                    0.0;
                                                safeSetState(() {});
                                              }
                                            },
                                            side: (FlutterFlowTheme.of(context)
                                                        .secondary !=
                                                    null)
                                                ? BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary!,
                                                  )
                                                : null,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                          ),
                                        ),
                                        Text(
                                          'San Bernardo',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                        Text(
                                          ' / 4.000 CLP',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue5 ??=
                                                FFAppState().direccion1 ==
                                                    FFAppState().SanJoaquin,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .checkboxValue5 = newValue!);
                                              if (newValue!) {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_di1q35ua_ON_TOGGLE_');
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 450,
                                                  ),
                                                );
                                                FFAppState().direccion1 =
                                                    FFAppState().SanJoaquin;
                                                FFAppState().valordelEnvio =
                                                    FFAppState().SanJoaquinN;
                                                _model.updatePage(() {});
                                                Navigator.pop(context);
                                              } else {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_di1q35ua_ON_TOGGLE_');
                                                FFAppState().direccion1 = '';
                                                FFAppState().valordelEnvio =
                                                    0.0;
                                                safeSetState(() {});
                                              }
                                            },
                                            side: (FlutterFlowTheme.of(context)
                                                        .secondary !=
                                                    null)
                                                ? BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary!,
                                                  )
                                                : null,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                          ),
                                        ),
                                        Text(
                                          'San Joaquin',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                        Text(
                                          ' / 4000 CLP',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue6 ??=
                                                FFAppState().direccion1 ==
                                                    FFAppState().SanMiguel,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .checkboxValue6 = newValue!);
                                              if (newValue!) {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_dvdoil2z_ON_TOGGLE_');
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 450,
                                                  ),
                                                );
                                                FFAppState().direccion1 =
                                                    FFAppState().SanMiguel;
                                                FFAppState().valordelEnvio =
                                                    FFAppState().SanMiguelN;
                                                _model.updatePage(() {});
                                                Navigator.pop(context);
                                              } else {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_dvdoil2z_ON_TOGGLE_');
                                                FFAppState().direccion1 = '';
                                                FFAppState().valordelEnvio =
                                                    0.0;
                                                safeSetState(() {});
                                              }
                                            },
                                            side: (FlutterFlowTheme.of(context)
                                                        .secondary !=
                                                    null)
                                                ? BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary!,
                                                  )
                                                : null,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                          ),
                                        ),
                                        Text(
                                          'San Miguel',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                        Text(
                                          ' / 4.000 CLP',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue7 ??=
                                                FFAppState().direccion1 ==
                                                    FFAppState().LaGranja,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .checkboxValue7 = newValue!);
                                              if (newValue!) {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_ylqbu3lf_ON_TOGGLE_');
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 450,
                                                  ),
                                                );
                                                FFAppState().direccion1 =
                                                    FFAppState().LaGranja;
                                                FFAppState().valordelEnvio =
                                                    FFAppState().LaGranjaN;
                                                _model.updatePage(() {});
                                                Navigator.pop(context);
                                              } else {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_ylqbu3lf_ON_TOGGLE_');
                                                FFAppState().direccion1 = '';
                                                FFAppState().valordelEnvio =
                                                    0.0;
                                                safeSetState(() {});
                                              }
                                            },
                                            side: (FlutterFlowTheme.of(context)
                                                        .secondary !=
                                                    null)
                                                ? BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary!,
                                                  )
                                                : null,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                          ),
                                        ),
                                        Text(
                                          'La Granja',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                        Text(
                                          ' / 4.000CLP',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue8 ??=
                                                FFAppState().direccion1 ==
                                                    FFAppState().LaPintana,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .checkboxValue8 = newValue!);
                                              if (newValue!) {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_o6cliigj_ON_TOGGLE_');
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 450,
                                                  ),
                                                );
                                                FFAppState().direccion1 =
                                                    FFAppState().LaPintana;
                                                FFAppState().valordelEnvio =
                                                    FFAppState().LaPintanaN;
                                                _model.updatePage(() {});
                                                Navigator.pop(context);
                                              } else {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_o6cliigj_ON_TOGGLE_');
                                                FFAppState().direccion1 = '';
                                                FFAppState().valordelEnvio =
                                                    0.0;
                                                safeSetState(() {});
                                              }
                                            },
                                            side: (FlutterFlowTheme.of(context)
                                                        .secondary !=
                                                    null)
                                                ? BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary!,
                                                  )
                                                : null,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                          ),
                                        ),
                                        Text(
                                          'La Pintana',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                        Text(
                                          ' / 4.000 CLP',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue9 ??=
                                                FFAppState().direccion1 ==
                                                    FFAppState().Macul,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .checkboxValue9 = newValue!);
                                              if (newValue!) {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_3kyzexwo_ON_TOGGLE_');
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 450,
                                                  ),
                                                );
                                                FFAppState().direccion1 =
                                                    FFAppState().Macul;
                                                FFAppState().valordelEnvio =
                                                    FFAppState().MaculN;
                                                _model.updatePage(() {});
                                                Navigator.pop(context);
                                              } else {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_3kyzexwo_ON_TOGGLE_');
                                                FFAppState().direccion1 = '';
                                                FFAppState().valordelEnvio =
                                                    0.0;
                                                safeSetState(() {});
                                              }
                                            },
                                            side: (FlutterFlowTheme.of(context)
                                                        .secondary !=
                                                    null)
                                                ? BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary!,
                                                  )
                                                : null,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                          ),
                                        ),
                                        Text(
                                          'Macul',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                        Text(
                                          ' / 4.000 CLP',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue10 ??=
                                                FFAppState().direccion1 ==
                                                    FFAppState().LaFlorida,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .checkboxValue10 = newValue!);
                                              if (newValue!) {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_vr44youw_ON_TOGGLE_');
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 450,
                                                  ),
                                                );
                                                FFAppState().direccion1 =
                                                    FFAppState().LaFlorida;
                                                FFAppState().valordelEnvio =
                                                    FFAppState().LaFloridaN;
                                                _model.updatePage(() {});
                                                Navigator.pop(context);
                                              } else {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_vr44youw_ON_TOGGLE_');
                                                FFAppState().direccion1 = '';
                                                FFAppState().valordelEnvio =
                                                    0.0;
                                                safeSetState(() {});
                                              }
                                            },
                                            side: (FlutterFlowTheme.of(context)
                                                        .secondary !=
                                                    null)
                                                ? BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary!,
                                                  )
                                                : null,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                          ),
                                        ),
                                        Text(
                                          'La Florida',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                        Text(
                                          ' / 5.000 CLP',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue11 ??=
                                                FFAppState().direccion1 ==
                                                    FFAppState().LoPrado,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .checkboxValue11 = newValue!);
                                              if (newValue!) {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_3ya5joaq_ON_TOGGLE_');
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 450,
                                                  ),
                                                );
                                                FFAppState().direccion1 =
                                                    FFAppState().LoPrado;
                                                FFAppState().valordelEnvio =
                                                    FFAppState().LopradoN;
                                                _model.updatePage(() {});
                                                Navigator.pop(context);
                                              } else {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_3ya5joaq_ON_TOGGLE_');
                                                FFAppState().direccion1 = '';
                                                FFAppState().valordelEnvio =
                                                    0.0;
                                                safeSetState(() {});
                                              }
                                            },
                                            side: (FlutterFlowTheme.of(context)
                                                        .secondary !=
                                                    null)
                                                ? BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary!,
                                                  )
                                                : null,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                          ),
                                        ),
                                        Text(
                                          'Lo Prado',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                        Text(
                                          ' / 5.000 CLP',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue12 ??=
                                                FFAppState().direccion1 ==
                                                    FFAppState().uoa,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .checkboxValue12 = newValue!);
                                              if (newValue!) {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_hma1ef20_ON_TOGGLE_');
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 450,
                                                  ),
                                                );
                                                FFAppState().direccion1 =
                                                    FFAppState().uoa;
                                                FFAppState().valordelEnvio =
                                                    FFAppState().NunuaN;
                                                _model.updatePage(() {});
                                                Navigator.pop(context);
                                              } else {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_hma1ef20_ON_TOGGLE_');
                                                FFAppState().direccion1 = '';
                                                FFAppState().valordelEnvio =
                                                    0.0;
                                                safeSetState(() {});
                                              }
                                            },
                                            side: (FlutterFlowTheme.of(context)
                                                        .secondary !=
                                                    null)
                                                ? BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary!,
                                                  )
                                                : null,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                          ),
                                        ),
                                        Text(
                                          'Ñuñoa',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                        Text(
                                          ' / 5.000 CLP',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue13 ??=
                                                FFAppState().direccion1 ==
                                                    FFAppState().PuenteAlto,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .checkboxValue13 = newValue!);
                                              if (newValue!) {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_ugiwkf2u_ON_TOGGLE_');
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 450,
                                                  ),
                                                );
                                                FFAppState().direccion1 =
                                                    FFAppState().PuenteAlto;
                                                FFAppState().valordelEnvio =
                                                    FFAppState().PuenteAltoN;
                                                _model.updatePage(() {});
                                                Navigator.pop(context);
                                              } else {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_ugiwkf2u_ON_TOGGLE_');
                                                FFAppState().direccion1 = '';
                                                FFAppState().valordelEnvio =
                                                    0.0;
                                                safeSetState(() {});
                                              }
                                            },
                                            side: (FlutterFlowTheme.of(context)
                                                        .secondary !=
                                                    null)
                                                ? BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary!,
                                                  )
                                                : null,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                          ),
                                        ),
                                        Text(
                                          'Puente Alto',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                        Text(
                                          ' /6.000 CLP',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue14 ??=
                                                FFAppState().direccion1 ==
                                                    FFAppState().LaReina,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .checkboxValue14 = newValue!);
                                              if (newValue!) {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_nb0ifsco_ON_TOGGLE_');
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 450,
                                                  ),
                                                );
                                                FFAppState().direccion1 =
                                                    FFAppState().LaReina;
                                                FFAppState().valordelEnvio =
                                                    FFAppState().LareinaN;
                                                _model.updatePage(() {});
                                                Navigator.pop(context);
                                              } else {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_nb0ifsco_ON_TOGGLE_');
                                                FFAppState().direccion1 = '';
                                                FFAppState().valordelEnvio =
                                                    0.0;
                                                safeSetState(() {});
                                              }
                                            },
                                            side: (FlutterFlowTheme.of(context)
                                                        .secondary !=
                                                    null)
                                                ? BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary!,
                                                  )
                                                : null,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                          ),
                                        ),
                                        Text(
                                          'La Reina',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                        Text(
                                          ' / 6.000 CLP',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue15 ??=
                                                FFAppState().direccion1 ==
                                                    FFAppState().LasCondes,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .checkboxValue15 = newValue!);
                                              if (newValue!) {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_0pcmh2kk_ON_TOGGLE_');
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 450,
                                                  ),
                                                );
                                                FFAppState().direccion1 =
                                                    FFAppState().LasCondes;
                                                FFAppState().valordelEnvio =
                                                    FFAppState().LascondesN;
                                                _model.updatePage(() {});
                                                Navigator.pop(context);
                                              } else {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_0pcmh2kk_ON_TOGGLE_');
                                                FFAppState().direccion1 = '';
                                                FFAppState().valordelEnvio =
                                                    0.0;
                                                safeSetState(() {});
                                              }
                                            },
                                            side: (FlutterFlowTheme.of(context)
                                                        .secondary !=
                                                    null)
                                                ? BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary!,
                                                  )
                                                : null,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                          ),
                                        ),
                                        Text(
                                          'Las Condes',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                        Text(
                                          ' / 6.000 CLP',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue16 ??=
                                                FFAppState().direccion1 ==
                                                    FFAppState().Maipu,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .checkboxValue16 = newValue!);
                                              if (newValue!) {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_ayaov24i_ON_TOGGLE_');
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 450,
                                                  ),
                                                );
                                                FFAppState().direccion1 =
                                                    FFAppState().Maipu;
                                                FFAppState().valordelEnvio =
                                                    FFAppState().MaipuN;
                                                _model.updatePage(() {});
                                                Navigator.pop(context);
                                              } else {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_ayaov24i_ON_TOGGLE_');
                                                FFAppState().direccion1 = '';
                                                FFAppState().valordelEnvio =
                                                    0.0;
                                                safeSetState(() {});
                                              }
                                            },
                                            side: (FlutterFlowTheme.of(context)
                                                        .secondary !=
                                                    null)
                                                ? BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary!,
                                                  )
                                                : null,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                          ),
                                        ),
                                        Text(
                                          'Maipu',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                        Text(
                                          ' / 6.000 CLP',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue17 ??=
                                                FFAppState().direccion1 ==
                                                    FFAppState().Providencia,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .checkboxValue17 = newValue!);
                                              if (newValue!) {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_cjdy1t2d_ON_TOGGLE_');
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 450,
                                                  ),
                                                );
                                                FFAppState().direccion1 =
                                                    FFAppState()
                                                        .ProvidenciaN
                                                        .toString();
                                                FFAppState().valordelEnvio =
                                                    FFAppState().ProvidenciaN;
                                                _model.updatePage(() {});
                                                Navigator.pop(context);
                                              } else {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_cjdy1t2d_ON_TOGGLE_');
                                                FFAppState().direccion1 = '';
                                                FFAppState().valordelEnvio =
                                                    0.0;
                                                safeSetState(() {});
                                              }
                                            },
                                            side: (FlutterFlowTheme.of(context)
                                                        .secondary !=
                                                    null)
                                                ? BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary!,
                                                  )
                                                : null,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                          ),
                                        ),
                                        Text(
                                          'Providencia',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                        Text(
                                          ' / 6.000 CLP',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue18 ??=
                                                FFAppState().direccion1 ==
                                                    FFAppState().Santiago,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .checkboxValue18 = newValue!);
                                              if (newValue!) {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_o3t2mllj_ON_TOGGLE_');
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 450,
                                                  ),
                                                );
                                                FFAppState().direccion1 =
                                                    FFAppState().Santiago;
                                                FFAppState().valordelEnvio =
                                                    FFAppState().SantiagoN;
                                                _model.updatePage(() {});
                                                Navigator.pop(context);
                                              } else {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_o3t2mllj_ON_TOGGLE_');
                                                FFAppState().direccion1 = '';
                                                FFAppState().valordelEnvio =
                                                    0.0;
                                                safeSetState(() {});
                                              }
                                            },
                                            side: (FlutterFlowTheme.of(context)
                                                        .secondary !=
                                                    null)
                                                ? BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary!,
                                                  )
                                                : null,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                          ),
                                        ),
                                        Text(
                                          'Santiago',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                        Text(
                                          ' / 6.000 CLP',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue19 ??=
                                                FFAppState().direccion1 ==
                                                    FFAppState().Vitacura,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .checkboxValue19 = newValue!);
                                              if (newValue!) {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_sbcee8sb_ON_TOGGLE_');
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 450,
                                                  ),
                                                );
                                                FFAppState().direccion1 =
                                                    FFAppState().Vitacura;
                                                FFAppState().valordelEnvio =
                                                    FFAppState().VitacuraN;
                                                _model.updatePage(() {});
                                                Navigator.pop(context);
                                              } else {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_sbcee8sb_ON_TOGGLE_');
                                                FFAppState().direccion1 = '';
                                                FFAppState().valordelEnvio =
                                                    0.0;
                                                safeSetState(() {});
                                              }
                                            },
                                            side: (FlutterFlowTheme.of(context)
                                                        .secondary !=
                                                    null)
                                                ? BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary!,
                                                  )
                                                : null,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                          ),
                                        ),
                                        Text(
                                          'Vitacura',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                        Text(
                                          ' / 7.000 CLP',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue20 ??=
                                                FFAppState().direccion1 ==
                                                    FFAppState().LoBarnechea,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .checkboxValue20 = newValue!);
                                              if (newValue!) {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_mt06ou9t_ON_TOGGLE_');
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 450,
                                                  ),
                                                );
                                                FFAppState().direccion1 =
                                                    FFAppState().LoBarnechea;
                                                FFAppState().valordelEnvio =
                                                    FFAppState().LoBarnecheaN;
                                                _model.updatePage(() {});
                                                Navigator.pop(context);
                                              } else {
                                                logFirebaseEvent(
                                                    'DIRECCIONES_Checkbox_mt06ou9t_ON_TOGGLE_');
                                                FFAppState().direccion1 = '';
                                                FFAppState().valordelEnvio =
                                                    0.0;
                                                safeSetState(() {});
                                              }
                                            },
                                            side: (FlutterFlowTheme.of(context)
                                                        .secondary !=
                                                    null)
                                                ? BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary!,
                                                  )
                                                : null,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                          ),
                                        ),
                                        Text(
                                          'Lo Barnechea',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                        Text(
                                          ' / 15.000 CLP',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF393939),
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
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'DIRECCIONES_COMP_CERRAR_BTN_ON_TAP');
                          await Future.delayed(
                            Duration(
                              milliseconds: 250,
                            ),
                          );
                          Navigator.pop(context);
                        },
                        text: 'Cerrar',
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
