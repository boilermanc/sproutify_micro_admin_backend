import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'batch_status_dropdown_model.dart';
export 'batch_status_dropdown_model.dart';

class BatchStatusDropdownWidget extends StatefulWidget {
  const BatchStatusDropdownWidget({
    super.key,
    this.batchID,
  });

  final int? batchID;

  @override
  State<BatchStatusDropdownWidget> createState() =>
      _BatchStatusDropdownWidgetState();
}

class _BatchStatusDropdownWidgetState extends State<BatchStatusDropdownWidget> {
  late BatchStatusDropdownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BatchStatusDropdownModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<SeedbatchesRow>>(
      future: SeedbatchesTable().querySingleRow(
        queryFn: (q) => q.eqOrNull(
          'batchid',
          widget!.batchID,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<SeedbatchesRow> containerSeedbatchesRowList = snapshot.data!;

        final containerSeedbatchesRow = containerSeedbatchesRowList.isNotEmpty
            ? containerSeedbatchesRowList.first
            : null;

        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(1.0),
              topRight: Radius.circular(0.0),
            ),
            border: Border.all(
              color: FlutterFlowTheme.of(context).primaryText,
            ),
          ),
          child: FlutterFlowDropDown<String>(
            controller: _model.statusUpdateValueController ??=
                FormFieldController<String>(
              _model.statusUpdateValue ??= containerSeedbatchesRow?.status,
            ),
            options: [
              FFLocalizations.of(context).getText(
                'xft7dhd6' /* New */,
              ),
              FFLocalizations.of(context).getText(
                'h92zlcqj' /* Active */,
              ),
              FFLocalizations.of(context).getText(
                '1eo5ifym' /* Used */,
              )
            ],
            onChanged: (val) async {
              safeSetState(() => _model.statusUpdateValue = val);
              await SeedbatchesTable().update(
                data: {
                  'status': _model.statusUpdateValue,
                },
                matchingRows: (rows) => rows.eqOrNull(
                  'batchid',
                  widget!.batchID,
                ),
              );
            },
            width: 200.0,
            height: 40.0,
            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.plusJakartaSans(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
            hintText: FFLocalizations.of(context).getText(
              'a470ke0c' /* Select... */,
            ),
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
            elevation: 2.0,
            borderColor: Colors.transparent,
            borderWidth: 0.0,
            borderRadius: 8.0,
            margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
            hidesUnderline: true,
            isOverButton: false,
            isSearchable: false,
            isMultiSelect: false,
          ),
        );
      },
    );
  }
}
