import '/flutter_flow/flutter_flow_util.dart';
import 'maintenance_detail_page_widget.dart' show MaintenanceDetailPageWidget;
import 'package:flutter/material.dart';

class MaintenanceDetailPageModel
    extends FlutterFlowModel<MaintenanceDetailPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  DateTime? datePicked1;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
