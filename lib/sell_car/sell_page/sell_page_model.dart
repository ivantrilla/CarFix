import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sell_page_widget.dart' show SellPageWidget;
import 'package:flutter/material.dart';

class SellPageModel extends FlutterFlowModel<SellPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for yourModel widget.
  FocusNode? yourModelFocusNode;
  TextEditingController? yourModelController;
  String? Function(BuildContext, String?)? yourModelControllerValidator;
  // State field(s) for SliderKm widget.
  double? sliderKmValue;
  // State field(s) for yourYearBought widget.
  FocusNode? yourYearBoughtFocusNode;
  TextEditingController? yourYearBoughtController;
  String? Function(BuildContext, String?)? yourYearBoughtControllerValidator;
  DateTime? datePicked;
  // State field(s) for RadioButtonFuel widget.
  FormFieldController<String>? radioButtonFuelValueController;
  // State field(s) for RadioButtonTrasmission widget.
  FormFieldController<String>? radioButtonTrasmissionValueController;
  // State field(s) for CheckboxAccident widget.
  bool? checkboxAccidentValue;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourURLCarWeb widget.
  FocusNode? yourURLCarWebFocusNode;
  TextEditingController? yourURLCarWebController;
  String? Function(BuildContext, String?)? yourURLCarWebControllerValidator;
  // State field(s) for yourPrice widget.
  FocusNode? yourPriceFocusNode;
  TextEditingController? yourPriceController;
  String? Function(BuildContext, String?)? yourPriceControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    yourModelFocusNode?.dispose();
    yourModelController?.dispose();

    yourYearBoughtFocusNode?.dispose();
    yourYearBoughtController?.dispose();

    yourURLCarWebFocusNode?.dispose();
    yourURLCarWebController?.dispose();

    yourPriceFocusNode?.dispose();
    yourPriceController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonFuelValue => radioButtonFuelValueController?.value;
  String? get radioButtonTrasmissionValue =>
      radioButtonTrasmissionValueController?.value;
}
