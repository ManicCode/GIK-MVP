import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for StudentEmail widget.
  FocusNode? studentEmailFocusNode;
  TextEditingController? studentEmailTextController;
  String? Function(BuildContext, String?)? studentEmailTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for StudentEmail-Create widget.
  FocusNode? studentEmailCreateFocusNode;
  TextEditingController? studentEmailCreateTextController;
  String? Function(BuildContext, String?)?
      studentEmailCreateTextControllerValidator;
  // State field(s) for password-Create widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordCreateVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    studentEmailFocusNode?.dispose();
    studentEmailTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    studentEmailCreateFocusNode?.dispose();
    studentEmailCreateTextController?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateTextController?.dispose();
  }
}
