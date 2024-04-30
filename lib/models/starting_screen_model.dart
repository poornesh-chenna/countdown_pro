import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import '../pages/starting_screen.dart' show StartingScreen;

class StartingScreenModel extends FlutterFlowModel<StartingScreen> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
