import '/flutter_flow/flutter_flow_util.dart';
import 'service_page_widget.dart' show ServicePageWidget;
import 'package:flutter/material.dart';

class ServicePageModel extends FlutterFlowModel<ServicePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
