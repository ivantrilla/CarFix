import '/flutter_flow/flutter_flow_util.dart';
import 'maintenance_page_widget.dart' show MaintenancePageWidget;
import 'package:flutter/material.dart';

class MaintenancePageModel extends FlutterFlowModel<MaintenancePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
