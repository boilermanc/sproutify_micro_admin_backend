import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'dart:async';
import 'edit_steps_widget.dart' show EditStepsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditStepsModel extends FlutterFlowModel<EditStepsWidget> {
  ///  Local state fields for this page.

  int selectedPage = 2;

  bool isActive = true;

  ///  State fields for stateful widgets in this page.

  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // State field(s) for stepName widget.
  FocusNode? stepNameFocusNode1;
  TextEditingController? stepNameTextController1;
  String? Function(BuildContext, String?)? stepNameTextController1Validator;
  // State field(s) for stepName widget.
  FocusNode? stepNameFocusNode2;
  TextEditingController? stepNameTextController2;
  String? Function(BuildContext, String?)? stepNameTextController2Validator;
  // State field(s) for enterTime widget.
  FocusNode? enterTimeFocusNode;
  TextEditingController? enterTimeTextController;
  String? Function(BuildContext, String?)? enterTimeTextControllerValidator;
  // State field(s) for durationUnit widget.
  String? durationUnitValue;
  FormFieldController<String>? durationUnitValueController;
  // State field(s) for stepAction widget.
  String? stepActionValue;
  FormFieldController<String>? stepActionValueController;
  // State field(s) for stepNotes widget.
  FocusNode? stepNotesFocusNode;
  TextEditingController? stepNotesTextController;
  String? Function(BuildContext, String?)? stepNotesTextControllerValidator;
  Completer<List<StepsRow>>? requestCompleter;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<StepsRow>();

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
    stepNameFocusNode1?.dispose();
    stepNameTextController1?.dispose();

    stepNameFocusNode2?.dispose();
    stepNameTextController2?.dispose();

    enterTimeFocusNode?.dispose();
    enterTimeTextController?.dispose();

    stepNotesFocusNode?.dispose();
    stepNotesTextController?.dispose();

    paginatedDataTableController.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
