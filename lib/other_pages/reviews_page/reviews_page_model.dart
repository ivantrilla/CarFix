import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'reviews_page_widget.dart' show ReviewsPageWidget;
import 'package:flutter/material.dart';

class ReviewsPageModel extends FlutterFlowModel<ReviewsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for yourReviews widget.
  FocusNode? yourReviewsFocusNode;
  TextEditingController? yourReviewsController;
  String? Function(BuildContext, String?)? yourReviewsControllerValidator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    yourReviewsFocusNode?.dispose();
    yourReviewsController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
