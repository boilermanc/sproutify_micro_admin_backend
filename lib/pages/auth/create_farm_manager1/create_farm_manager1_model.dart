import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'create_farm_manager1_widget.dart' show CreateFarmManager1Widget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateFarmManager1Model
    extends FlutterFlowModel<CreateFarmManager1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for verifyPassword widget.
  FocusNode? verifyPasswordFocusNode;
  TextEditingController? verifyPasswordTextController;
  late bool verifyPasswordVisibility;
  String? Function(BuildContext, String?)?
      verifyPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    verifyPasswordVisibility = false;
  }

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    verifyPasswordFocusNode?.dispose();
    verifyPasswordTextController?.dispose();
  }
}
