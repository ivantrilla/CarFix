import '/flutter_flow/flutter_flow_util.dart';
import 'profile_create_widget.dart' show ProfileCreateWidget;
import 'package:flutter/material.dart';

class ProfileCreateModel extends FlutterFlowModel<ProfileCreateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameController;
  String? Function(BuildContext, String?)? yourNameControllerValidator;
  // State field(s) for yourBio widget.
  FocusNode? yourBioFocusNode;
  TextEditingController? yourBioController;
  String? Function(BuildContext, String?)? yourBioControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    yourNameFocusNode?.dispose();
    yourNameController?.dispose();

    yourBioFocusNode?.dispose();
    yourBioController?.dispose();
  }
}
