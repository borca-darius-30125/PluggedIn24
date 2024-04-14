import '/flutter_flow/flutter_flow_util.dart';
import 'meetpage_widget.dart' show MeetpageWidget;
import 'package:flutter/material.dart';

class MeetpageModel extends FlutterFlowModel<MeetpageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
