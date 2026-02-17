import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ingredientesadicionales_model.dart';
export 'ingredientesadicionales_model.dart';

class IngredientesadicionalesWidget extends StatefulWidget {
  const IngredientesadicionalesWidget({
    super.key,
    required this.ingredientes1,
  });

  final List<String>? ingredientes1;

  @override
  State<IngredientesadicionalesWidget> createState() =>
      _IngredientesadicionalesWidgetState();
}

class _IngredientesadicionalesWidgetState
    extends State<IngredientesadicionalesWidget> {
  late IngredientesadicionalesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IngredientesadicionalesModel());

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
      ),
      child: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: 344.0,
              height: 430.0,
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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Text(
                          'Mas Ingredientes Adicionales',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
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
                    height: 20.0,
                    thickness: 0.5,
                    indent: 15.0,
                    endIndent: 15.0,
                    color: FlutterFlowTheme.of(context).tertiary,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
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
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue1 ??= widget!
                                          .ingredientes1
                                          ?.contains(FFAppState().Sandwich) ==
                                      (FFAppState().Sandwich != null &&
                                          FFAppState().Sandwich != ''),
                                  onChanged: (newValue) async {
                                    safeSetState(() =>
                                        _model.checkboxValue1 = newValue!);
                                    if (newValue!) {
                                      logFirebaseEvent(
                                          'INGREDIENTESADICIONALES_Checkbox_omp6zri');
                                      FFAppState().addToPrecioadicionales1(
                                          FFAppState().SndwichN);
                                      FFAppState().addToIngredientestext(
                                          FFAppState().Sandwich);
                                      safeSetState(() {});
                                    } else {
                                      logFirebaseEvent(
                                          'INGREDIENTESADICIONALES_Checkbox_omp6zri');
                                      FFAppState().removeFromPrecioadicionales1(
                                          FFAppState().SndwichN);
                                      FFAppState().removeFromIngredientestext(
                                          FFAppState().Sandwich);
                                      safeSetState(() {});
                                    }
                                  },
                                  side: (FlutterFlowTheme.of(context)
                                              .secondary !=
                                          null)
                                      ? BorderSide(
                                          width: 2,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary!,
                                        )
                                      : null,
                                  activeColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  checkColor: FlutterFlowTheme.of(context).info,
                                ),
                              ),
                              Text(
                                'Sándwich',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF393939),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Text(
                                ' / 1.500 CLP',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF393939),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Theme(
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
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue2 ??= widget!
                                          .ingredientes1
                                          ?.contains(FFAppState()
                                              .CroassaintdeJamnQueso) ==
                                      (FFAppState().CroassaintdeJamnQueso !=
                                              null &&
                                          FFAppState().CroassaintdeJamnQueso !=
                                              ''),
                                  onChanged: (newValue) async {
                                    safeSetState(() =>
                                        _model.checkboxValue2 = newValue!);
                                    if (newValue!) {
                                      logFirebaseEvent(
                                          'INGREDIENTESADICIONALES_Checkbox_12y777c');
                                      FFAppState().addToPrecioadicionales1(
                                          FFAppState().CroassaintjamnquesoN);
                                      FFAppState().addToIngredientestext(
                                          FFAppState().CroassaintdeJamnQueso);
                                      safeSetState(() {});
                                    } else {
                                      logFirebaseEvent(
                                          'INGREDIENTESADICIONALES_Checkbox_12y777c');
                                      FFAppState().removeFromPrecioadicionales1(
                                          FFAppState().CroassaintjamnquesoN);
                                      FFAppState().addToIngredientestext(
                                          FFAppState().CroassaintdeJamnQueso);
                                      safeSetState(() {});
                                    }
                                  },
                                  side: (FlutterFlowTheme.of(context)
                                              .secondary !=
                                          null)
                                      ? BorderSide(
                                          width: 2,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary!,
                                        )
                                      : null,
                                  activeColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  checkColor: FlutterFlowTheme.of(context).info,
                                ),
                              ),
                              Text(
                                'Croassaint Jamón, Queso',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF393939),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Text(
                                ' / 2.500 CLP',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF393939),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
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
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue3 ??= widget!
                                          .ingredientes1
                                          ?.contains(FFAppState()
                                              .MiniCroassaintdeJamnQueso) ==
                                      valueOrDefault<bool>(
                                        FFAppState().MiniCroassaintdeJamnQueso !=
                                                null &&
                                            FFAppState()
                                                    .MiniCroassaintdeJamnQueso !=
                                                '',
                                        true,
                                      ),
                                  onChanged: (newValue) async {
                                    safeSetState(() =>
                                        _model.checkboxValue3 = newValue!);
                                    if (newValue!) {
                                      logFirebaseEvent(
                                          'INGREDIENTESADICIONALES_Checkbox_6yw9w6u');
                                      FFAppState().addToPrecioadicionales1(
                                          FFAppState()
                                              .MiniCroassaintjamonquesoN);
                                      FFAppState().addToIngredientestext(
                                          FFAppState()
                                              .MiniCroassaintdeJamnQueso);
                                      safeSetState(() {});
                                    } else {
                                      logFirebaseEvent(
                                          'INGREDIENTESADICIONALES_Checkbox_6yw9w6u');
                                      FFAppState().removeFromPrecioadicionales1(
                                          FFAppState()
                                              .MiniCroassaintjamonquesoN);
                                      FFAppState().removeFromIngredientestext(
                                          FFAppState()
                                              .MiniCroassaintdeJamnQueso);
                                      safeSetState(() {});
                                    }
                                  },
                                  side: (FlutterFlowTheme.of(context)
                                              .secondary !=
                                          null)
                                      ? BorderSide(
                                          width: 2,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary!,
                                        )
                                      : null,
                                  activeColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  checkColor: FlutterFlowTheme.of(context).info,
                                ),
                              ),
                              Text(
                                'Mini Croassaint Jamón, Queso',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF393939),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Text(
                                ' / 1.500 CLP',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF393939),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
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
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue4 ??= widget!
                                          .ingredientes1
                                          ?.contains(FFAppState()
                                              .ChocolateArtesanal) ==
                                      (FFAppState().ChocolateArtesanal !=
                                              null &&
                                          FFAppState().ChocolateArtesanal !=
                                              ''),
                                  onChanged: (newValue) async {
                                    safeSetState(() =>
                                        _model.checkboxValue4 = newValue!);
                                    if (newValue!) {
                                      logFirebaseEvent(
                                          'INGREDIENTESADICIONALES_Checkbox_ydmye42');
                                      FFAppState().addToPrecioadicionales1(
                                          FFAppState().ChocolateArtesanalN);
                                      FFAppState().addToIngredientestext(
                                          FFAppState().ChocolateArtesanal);
                                      safeSetState(() {});
                                    } else {
                                      logFirebaseEvent(
                                          'INGREDIENTESADICIONALES_Checkbox_ydmye42');
                                      FFAppState().removeFromPrecioadicionales1(
                                          FFAppState().ChocolateArtesanalN);
                                      FFAppState().removeFromIngredientestext(
                                          FFAppState().ChocolateArtesanal);
                                      safeSetState(() {});
                                    }
                                  },
                                  side: (FlutterFlowTheme.of(context)
                                              .secondary !=
                                          null)
                                      ? BorderSide(
                                          width: 2,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary!,
                                        )
                                      : null,
                                  activeColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  checkColor: FlutterFlowTheme.of(context).info,
                                ),
                              ),
                              Text(
                                'Chocolate Artesanal',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF393939),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Text(
                                ' / 1.500 CLP',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF393939),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
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
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue5 ??= widget!
                                          .ingredientes1
                                          ?.contains(
                                              FFAppState().YogurtArtesanal) ==
                                      (FFAppState().YogurtArtesanal != null &&
                                          FFAppState().YogurtArtesanal != ''),
                                  onChanged: (newValue) async {
                                    safeSetState(() =>
                                        _model.checkboxValue5 = newValue!);
                                    if (newValue!) {
                                      logFirebaseEvent(
                                          'INGREDIENTESADICIONALES_Checkbox_yk61ymw');
                                      FFAppState().addToPrecioadicionales1(
                                          FFAppState().YogurtartesanalN);
                                      FFAppState().addToIngredientestext(
                                          FFAppState().YogurtArtesanal);
                                      safeSetState(() {});
                                    } else {
                                      logFirebaseEvent(
                                          'INGREDIENTESADICIONALES_Checkbox_yk61ymw');
                                      FFAppState().removeFromPrecioadicionales1(
                                          FFAppState().YogurtartesanalN);
                                      FFAppState().removeFromIngredientestext(
                                          FFAppState().YogurtArtesanal);
                                      safeSetState(() {});
                                    }
                                  },
                                  side: (FlutterFlowTheme.of(context)
                                              .secondary !=
                                          null)
                                      ? BorderSide(
                                          width: 2,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary!,
                                        )
                                      : null,
                                  activeColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  checkColor: FlutterFlowTheme.of(context).info,
                                ),
                              ),
                              Text(
                                'Yogurt Artesanal',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF393939),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Text(
                                ' / 1.500 CLP',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF393939),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
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
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue6 ??= widget!
                                          .ingredientes1
                                          ?.contains(FFAppState().Leche250ml) ==
                                      (FFAppState().Leche250ml != null &&
                                          FFAppState().Leche250ml != ''),
                                  onChanged: (newValue) async {
                                    safeSetState(() =>
                                        _model.checkboxValue6 = newValue!);
                                    if (newValue!) {
                                      logFirebaseEvent(
                                          'INGREDIENTESADICIONALES_Checkbox_n51l32q');
                                      FFAppState().addToPrecioadicionales1(
                                          FFAppState().Leche250mlN);
                                      FFAppState().addToIngredientestext(
                                          FFAppState().Leche250ml);
                                      safeSetState(() {});
                                    } else {
                                      logFirebaseEvent(
                                          'INGREDIENTESADICIONALES_Checkbox_n51l32q');
                                      FFAppState().removeFromPrecioadicionales1(
                                          FFAppState().Leche250mlN);
                                      FFAppState().removeFromIngredientestext(
                                          FFAppState().Leche250ml);
                                      safeSetState(() {});
                                    }
                                  },
                                  side: (FlutterFlowTheme.of(context)
                                              .secondary !=
                                          null)
                                      ? BorderSide(
                                          width: 2,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary!,
                                        )
                                      : null,
                                  activeColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  checkColor: FlutterFlowTheme.of(context).info,
                                ),
                              ),
                              Text(
                                'Leche 250ml',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF393939),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Text(
                                ' / 1.500 CLP',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF393939),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
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
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue7 ??= widget!
                                          .ingredientes1
                                          ?.contains(FFAppState().Jugo250ml) ==
                                      (FFAppState().Jugo250ml != null &&
                                          FFAppState().Jugo250ml != ''),
                                  onChanged: (newValue) async {
                                    safeSetState(() =>
                                        _model.checkboxValue7 = newValue!);
                                    if (newValue!) {
                                      logFirebaseEvent(
                                          'INGREDIENTESADICIONALES_Checkbox_6vvc43w');
                                      FFAppState().addToPrecioadicionales1(
                                          FFAppState().Jugo250mlN);
                                      FFAppState().addToIngredientestext(
                                          FFAppState().Jugo250ml);
                                      safeSetState(() {});
                                    } else {
                                      logFirebaseEvent(
                                          'INGREDIENTESADICIONALES_Checkbox_6vvc43w');
                                      FFAppState().removeFromPrecioadicionales1(
                                          FFAppState().Jugo250mlN);
                                      FFAppState().removeFromIngredientestext(
                                          FFAppState().Jugo250ml);
                                      safeSetState(() {});
                                    }
                                  },
                                  side: (FlutterFlowTheme.of(context)
                                              .secondary !=
                                          null)
                                      ? BorderSide(
                                          width: 2,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary!,
                                        )
                                      : null,
                                  activeColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  checkColor: FlutterFlowTheme.of(context).info,
                                ),
                              ),
                              Text(
                                'Jugo 250ml',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF393939),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Text(
                                ' / 1.500 CLP',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF393939),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
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
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue8 ??= widget!
                                          .ingredientes1
                                          ?.contains(FFAppState().Copa) ==
                                      (FFAppState().Copa != null &&
                                          FFAppState().Copa != ''),
                                  onChanged: (newValue) async {
                                    safeSetState(() =>
                                        _model.checkboxValue8 = newValue!);
                                    if (newValue!) {
                                      logFirebaseEvent(
                                          'INGREDIENTESADICIONALES_Checkbox_chf59j9');
                                      FFAppState().addToPrecioadicionales1(
                                          FFAppState().CopaN);
                                      FFAppState().addToIngredientestext(
                                          FFAppState().CopaN.toString());
                                      safeSetState(() {});
                                    } else {
                                      logFirebaseEvent(
                                          'INGREDIENTESADICIONALES_Checkbox_chf59j9');
                                      FFAppState().removeFromPrecioadicionales1(
                                          FFAppState().CopaN);
                                      FFAppState().removeFromIngredientestext(
                                          FFAppState().Copa);
                                      safeSetState(() {});
                                    }
                                  },
                                  side: (FlutterFlowTheme.of(context)
                                              .secondary !=
                                          null)
                                      ? BorderSide(
                                          width: 2,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary!,
                                        )
                                      : null,
                                  activeColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  checkColor: FlutterFlowTheme.of(context).info,
                                ),
                              ),
                              Text(
                                'Copa',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF393939),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Text(
                                ' / 1.500 CLP',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF393939),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
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
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue9 ??= widget!
                                          .ingredientes1
                                          ?.contains(
                                              FFAppState().GloboMetalizado) ==
                                      (FFAppState().GloboMetalizado != null &&
                                          FFAppState().GloboMetalizado != ''),
                                  onChanged: (newValue) async {
                                    safeSetState(() =>
                                        _model.checkboxValue9 = newValue!);
                                    if (newValue!) {
                                      logFirebaseEvent(
                                          'INGREDIENTESADICIONALES_Checkbox_0tfejlx');
                                      FFAppState().addToPrecioadicionales1(
                                          FFAppState().GlobometalizadoN);
                                      FFAppState().addToIngredientestext(
                                          FFAppState().GloboMetalizado);
                                      safeSetState(() {});
                                    } else {
                                      logFirebaseEvent(
                                          'INGREDIENTESADICIONALES_Checkbox_0tfejlx');
                                      FFAppState().removeFromPrecioadicionales1(
                                          FFAppState().GlobometalizadoN);
                                      FFAppState().removeFromIngredientestext(
                                          FFAppState().GloboMetalizado);
                                      safeSetState(() {});
                                    }
                                  },
                                  side: (FlutterFlowTheme.of(context)
                                              .secondary !=
                                          null)
                                      ? BorderSide(
                                          width: 2,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary!,
                                        )
                                      : null,
                                  activeColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  checkColor: FlutterFlowTheme.of(context).info,
                                ),
                              ),
                              Text(
                                'Globo Metalizado',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF393939),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Text(
                                ' / 1.500 CLP',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF393939),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'INGREDIENTESADICIONALES_CERRAR_BTN_ON_TA');
                        Navigator.pop(context);
                      },
                      text: 'Cerrar',
                      options: FFButtonOptions(
                        width: 175.0,
                        height: 35.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
        ],
      ),
    );
  }
}
