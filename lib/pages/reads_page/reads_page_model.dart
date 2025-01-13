import '/flutter_flow/flutter_flow_util.dart';
import 'reads_page_widget.dart' show ReadsPageWidget;
import 'package:flutter/material.dart';

class ReadsPageModel extends FlutterFlowModel<ReadsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for commentBox widget.
  FocusNode? commentBoxFocusNode;
  TextEditingController? commentBoxTextController;
  String? Function(BuildContext, String?)? commentBoxTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    commentBoxFocusNode?.dispose();
    commentBoxTextController?.dispose();
  }
}
