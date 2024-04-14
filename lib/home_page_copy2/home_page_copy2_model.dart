import '/components/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_copy2_widget.dart' show HomePageCopy2Widget;
import 'package:flutter/material.dart';

class HomePageCopy2Model extends FlutterFlowModel<HomePageCopy2Widget> {
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
