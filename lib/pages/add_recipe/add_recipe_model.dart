import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'add_recipe_widget.dart' show AddRecipeWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddRecipeModel extends FlutterFlowModel<AddRecipeWidget> {
  ///  Local state fields for this page.

  int selectedPage = 2;

  bool isActive = true;

  ///  State fields for stateful widgets in this page.

  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // State field(s) for dropDownVariety widget.
  String? dropDownVarietyValue;
  FormFieldController<String>? dropDownVarietyValueController;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for recipeName widget.
  FocusNode? recipeNameFocusNode;
  TextEditingController? recipeNameTextController;
  String? Function(BuildContext, String?)? recipeNameTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for notes widget.
  FocusNode? notesFocusNode;
  TextEditingController? notesTextController;
  String? Function(BuildContext, String?)? notesTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in createRecipe widget.
  RecipesRow? recipeInsert29084;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
    recipeNameFocusNode?.dispose();
    recipeNameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    notesFocusNode?.dispose();
    notesTextController?.dispose();
  }
}
