import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/direcciones_widget.dart';
import '/components/terminosycondiciones_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'cart_widget.dart' show CartWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartModel extends FlutterFlowModel<CartWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey3 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for terminosyconciones1 widget.
  bool? terminosyconciones1Value;
  // State field(s) for terminosyconciones2 widget.
  bool? terminosyconciones2Value;
  // State field(s) for Nombre widget.
  FocusNode? nombreFocusNode1;
  TextEditingController? nombreTextController1;
  String? Function(BuildContext, String?)? nombreTextController1Validator;
  String? _nombreTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nombres es Requerido';
    }

    if (val.length < 10) {
      return 'Requires at least 10 characters.';
    }

    return null;
  }

  // State field(s) for Direccion widget.
  FocusNode? direccionFocusNode1;
  TextEditingController? direccionTextController1;
  String? Function(BuildContext, String?)? direccionTextController1Validator;
  String? _direccionTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Dirección de Entrega es Requerido';
    }

    return null;
  }

  // State field(s) for Telefono widget.
  FocusNode? telefonoFocusNode1;
  TextEditingController? telefonoTextController1;
  String? Function(BuildContext, String?)? telefonoTextController1Validator;
  String? _telefonoTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Teléfono / Whatsappes Requerido';
    }

    return null;
  }

  // State field(s) for Email widget.
  FocusNode? emailFocusNode1;
  TextEditingController? emailTextController1;
  String? Function(BuildContext, String?)? emailTextController1Validator;
  String? _emailTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email es Requerido';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for fechadeentrega widget.
  FocusNode? fechadeentregaFocusNode;
  TextEditingController? fechadeentregaTextController;
  String? Function(BuildContext, String?)?
      fechadeentregaTextControllerValidator;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? formulario1;
  // State field(s) for Nombre widget.
  FocusNode? nombreFocusNode2;
  TextEditingController? nombreTextController2;
  String? Function(BuildContext, String?)? nombreTextController2Validator;
  String? _nombreTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nombres es Requerido';
    }

    if (val.length < 10) {
      return 'Requires at least 10 characters.';
    }

    return null;
  }

  // State field(s) for Direccion widget.
  FocusNode? direccionFocusNode2;
  TextEditingController? direccionTextController2;
  String? Function(BuildContext, String?)? direccionTextController2Validator;
  String? _direccionTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Dirección de Entrega es Requerido';
    }

    return null;
  }

  // State field(s) for Telefono widget.
  FocusNode? telefonoFocusNode2;
  TextEditingController? telefonoTextController2;
  String? Function(BuildContext, String?)? telefonoTextController2Validator;
  String? _telefonoTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Teléfono / Whatsappes Requerido';
    }

    return null;
  }

  // State field(s) for Email widget.
  FocusNode? emailFocusNode2;
  TextEditingController? emailTextController2;
  String? Function(BuildContext, String?)? emailTextController2Validator;
  String? _emailTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email es Requerido';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for fechadeentrega2 widget.
  FocusNode? fechadeentrega2FocusNode;
  TextEditingController? fechadeentrega2TextController;
  String? Function(BuildContext, String?)?
      fechadeentrega2TextControllerValidator;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? formulario4;

  @override
  void initState(BuildContext context) {
    nombreTextController1Validator = _nombreTextController1Validator;
    direccionTextController1Validator = _direccionTextController1Validator;
    telefonoTextController1Validator = _telefonoTextController1Validator;
    emailTextController1Validator = _emailTextController1Validator;
    nombreTextController2Validator = _nombreTextController2Validator;
    direccionTextController2Validator = _direccionTextController2Validator;
    telefonoTextController2Validator = _telefonoTextController2Validator;
    emailTextController2Validator = _emailTextController2Validator;
  }

  @override
  void dispose() {
    nombreFocusNode1?.dispose();
    nombreTextController1?.dispose();

    direccionFocusNode1?.dispose();
    direccionTextController1?.dispose();

    telefonoFocusNode1?.dispose();
    telefonoTextController1?.dispose();

    emailFocusNode1?.dispose();
    emailTextController1?.dispose();

    fechadeentregaFocusNode?.dispose();
    fechadeentregaTextController?.dispose();

    nombreFocusNode2?.dispose();
    nombreTextController2?.dispose();

    direccionFocusNode2?.dispose();
    direccionTextController2?.dispose();

    telefonoFocusNode2?.dispose();
    telefonoTextController2?.dispose();

    emailFocusNode2?.dispose();
    emailTextController2?.dispose();

    fechadeentrega2FocusNode?.dispose();
    fechadeentrega2TextController?.dispose();
  }
}
