import '/flutter_flow/flutter_flow_util.dart';
import 'profile_main_widget.dart' show ProfileMainWidget;
import 'package:flutter/material.dart';

class ProfileMainModel extends FlutterFlowModel<ProfileMainWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailController;
  String? Function(BuildContext, String?)? txtEmailControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtEmailFocusNode?.dispose();
    txtEmailController?.dispose();
  }
}
