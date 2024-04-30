import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutterflow_ui/flutterflow_ui.dart';
import '../utils/custom_values.dart';

class AddBtn extends StatelessWidget {
  @override
  Widget build(context) {
    return Transform.rotate(
      angle: 45 * (math.pi / 180),
      child: Align(
        alignment: const AlignmentDirectional(0, 0),
        child: Material(
          color: Colors.transparent,
          elevation: 0,
          child: Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  color: Color(0x33000000),
                  offset: Offset(
                    0,
                    2,
                  ),
                )
              ],
            ),
            child: FlutterFlowIconButton(
              borderRadius: 6,
              buttonSize: 60,
              fillColor: lightOrange,
              icon: Icon(
                Icons.clear_sharp,
                color: FlutterFlowTheme.of(context).tertiary,
                size: 30,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
        ),
      ),
    );
  }
}
