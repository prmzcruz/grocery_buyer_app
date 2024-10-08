import 'package:buyer_app/Utility/CommonColor.dart';

import 'Colors.dart';
import 'package:flutter/material.dart';

class CommonAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = Colors.red;
  final String title;
  final AppBar appBar;
  final List<Widget> widgets;

  const CommonAppbar({super.key, required this.title, required this.appBar, required this.widgets});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      // leading: BackButton(color: HexColor(Colorscommon.greycolor)),
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
            fontFamily: 'Lato',fontSize: 18,
            color: HexColor(Colorscommon.greycolor)),
      ),
      backgroundColor: HexColor(Colorscommon.toolbar_background),
      actions: widgets,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
