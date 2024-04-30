import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import '../pages/home_screen.dart' show HomeScreenWidget;

class HomeScreen4Model extends FlutterFlowModel<HomeScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
