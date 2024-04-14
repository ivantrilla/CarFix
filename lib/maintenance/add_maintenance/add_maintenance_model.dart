import '/flutter_flow/flutter_flow_util.dart';
import 'add_maintenance_widget.dart' show AddMaintenanceWidget;
import 'package:flutter/material.dart';

class AddMaintenanceModel extends FlutterFlowModel<AddMaintenanceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourMaintenanceType widget.
  FocusNode? yourMaintenanceTypeFocusNode;
  TextEditingController? yourMaintenanceTypeController;
  String? Function(BuildContext, String?)?
      yourMaintenanceTypeControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    yourMaintenanceTypeFocusNode?.dispose();
    yourMaintenanceTypeController?.dispose();
  }
}
