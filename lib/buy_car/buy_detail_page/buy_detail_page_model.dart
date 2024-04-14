import '/flutter_flow/flutter_flow_util.dart';
import 'buy_detail_page_widget.dart' show BuyDetailPageWidget;
import 'package:flutter/material.dart';

class BuyDetailPageModel extends FlutterFlowModel<BuyDetailPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  var scan = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
