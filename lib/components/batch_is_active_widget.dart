import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'batch_is_active_model.dart';
export 'batch_is_active_model.dart';

class BatchIsActiveWidget extends StatefulWidget {
  const BatchIsActiveWidget({super.key});

  @override
  State<BatchIsActiveWidget> createState() => _BatchIsActiveWidgetState();
}

class _BatchIsActiveWidgetState extends State<BatchIsActiveWidget> {
  late BatchIsActiveModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BatchIsActiveModel());

    _model.switchValue = true;
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Switch.adaptive(
        value: _model.switchValue!,
        onChanged: (newValue) async {
          safeSetState(() => _model.switchValue = newValue!);
        },
        activeColor: FlutterFlowTheme.of(context).primary,
        activeTrackColor: FlutterFlowTheme.of(context).accent1,
        inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
        inactiveThumbColor: FlutterFlowTheme.of(context).secondaryText,
      ),
    );
  }
}
