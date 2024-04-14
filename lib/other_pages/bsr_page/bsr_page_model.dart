import '/flutter_flow/flutter_flow_util.dart';
import 'bsr_page_widget.dart' show BsrPageWidget;
import 'package:flutter/material.dart';

class BsrPageModel extends FlutterFlowModel<BsrPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
