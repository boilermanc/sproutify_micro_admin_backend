import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'add_a_farm_widget.dart' show AddAFarmWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddAFarmModel extends FlutterFlowModel<AddAFarmWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for farmName widget.
  FocusNode? farmNameFocusNode;
  TextEditingController? farmNameTextController;
  String? Function(BuildContext, String?)? farmNameTextControllerValidator;
  // State field(s) for street widget.
  FocusNode? streetFocusNode;
  TextEditingController? streetTextController;
  String? Function(BuildContext, String?)? streetTextControllerValidator;
  // State field(s) for farmCity widget.
  FocusNode? farmCityFocusNode;
  TextEditingController? farmCityTextController;
  String? Function(BuildContext, String?)? farmCityTextControllerValidator;
  // State field(s) for farmState widget.
  FocusNode? farmStateFocusNode;
  TextEditingController? farmStateTextController;
  String? Function(BuildContext, String?)? farmStateTextControllerValidator;
  // State field(s) for farmPostal widget.
  FocusNode? farmPostalFocusNode;
  TextEditingController? farmPostalTextController;
  String? Function(BuildContext, String?)? farmPostalTextControllerValidator;
  // State field(s) for farmCountry widget.
  FocusNode? farmCountryFocusNode;
  TextEditingController? farmCountryTextController;
  String? Function(BuildContext, String?)? farmCountryTextControllerValidator;
  // State field(s) for farmPhone widget.
  FocusNode? farmPhoneFocusNode;
  TextEditingController? farmPhoneTextController;
  String? Function(BuildContext, String?)? farmPhoneTextControllerValidator;
  // State field(s) for farmEmail widget.
  FocusNode? farmEmailFocusNode;
  TextEditingController? farmEmailTextController;
  String? Function(BuildContext, String?)? farmEmailTextControllerValidator;
  // State field(s) for numberEmployees widget.
  String? numberEmployeesValue;
  FormFieldController<String>? numberEmployeesValueController;
  // State field(s) for prefferedUnit widget.
  String? prefferedUnitValue;
  FormFieldController<String>? prefferedUnitValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    farmNameFocusNode?.dispose();
    farmNameTextController?.dispose();

    streetFocusNode?.dispose();
    streetTextController?.dispose();

    farmCityFocusNode?.dispose();
    farmCityTextController?.dispose();

    farmStateFocusNode?.dispose();
    farmStateTextController?.dispose();

    farmPostalFocusNode?.dispose();
    farmPostalTextController?.dispose();

    farmCountryFocusNode?.dispose();
    farmCountryTextController?.dispose();

    farmPhoneFocusNode?.dispose();
    farmPhoneTextController?.dispose();

    farmEmailFocusNode?.dispose();
    farmEmailTextController?.dispose();
  }
}
