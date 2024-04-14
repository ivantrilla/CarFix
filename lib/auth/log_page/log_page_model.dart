import '/flutter_flow/flutter_flow_util.dart';
import 'log_page_widget.dart' show LogPageWidget;
import 'package:flutter/material.dart';

class LogPageModel extends FlutterFlowModel<LogPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailController;
  String? Function(BuildContext, String?)? txtEmailControllerValidator;
  // State field(s) for txtPassword widget.
  FocusNode? txtPasswordFocusNode;
  TextEditingController? txtPasswordController;
  late bool txtPasswordVisibility;
  String? Function(BuildContext, String?)? txtPasswordControllerValidator;
  // State field(s) for txtConfirmPassword widget.
  FocusNode? txtConfirmPasswordFocusNode;
  TextEditingController? txtConfirmPasswordController;
  late bool txtConfirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      txtConfirmPasswordControllerValidator;
  // State field(s) for txtLOGEmail widget.
  FocusNode? txtLOGEmailFocusNode;
  TextEditingController? txtLOGEmailController;
  String? Function(BuildContext, String?)? txtLOGEmailControllerValidator;
  // State field(s) for txtLOGPassword widget.
  FocusNode? txtLOGPasswordFocusNode;
  TextEditingController? txtLOGPasswordController;
  late bool txtLOGPasswordVisibility;
  String? Function(BuildContext, String?)? txtLOGPasswordControllerValidator;

  @override
  void initState(BuildContext context) {
    txtPasswordVisibility = false;
    txtConfirmPasswordVisibility = false;
    txtLOGPasswordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    txtEmailFocusNode?.dispose();
    txtEmailController?.dispose();

    txtPasswordFocusNode?.dispose();
    txtPasswordController?.dispose();

    txtConfirmPasswordFocusNode?.dispose();
    txtConfirmPasswordController?.dispose();

    txtLOGEmailFocusNode?.dispose();
    txtLOGEmailController?.dispose();

    txtLOGPasswordFocusNode?.dispose();
    txtLOGPasswordController?.dispose();
  }
}
