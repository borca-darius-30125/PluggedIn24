import '/components/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_copy_widget.dart' show HomePageCopyWidget;
import 'package:flutter/material.dart';

class HomePageCopyModel extends FlutterFlowModel<HomePageCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;

  @override
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideBarNavModel.dispose();
  }
}
