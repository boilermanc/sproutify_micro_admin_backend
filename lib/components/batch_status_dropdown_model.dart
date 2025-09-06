import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'batch_status_dropdown_widget.dart' show BatchStatusDropdownWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BatchStatusDropdownModel
    extends FlutterFlowModel<BatchStatusDropdownWidget> {
  ///  Local state fields for this component.

  int? batchID;

  ///  State fields for stateful widgets in this component.

  // State field(s) for statusUpdate widget.
  String? statusUpdateValue;
  FormFieldController<String>? statusUpdateValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
