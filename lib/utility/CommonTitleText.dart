import 'package:flutter/material.dart';
import 'Colors.dart';
import 'CommonColor.dart';

class CommonTitleTextMandotory extends StatelessWidget
    implements PreferredSizeWidget {
  final String text;

  const CommonTitleTextMandotory({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: text,
          style: TextStyle(
              fontFamily: 'Avenir LT Std 65 Medium',
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: HexColor(Colorscommon.lightblack)),
          children: const [
            TextSpan(
                text: ' *',
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Avenir LT Std 65 Medium",
                    fontSize: 15))
          ]),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class CommonTitleText extends StatelessWidget implements PreferredSizeWidget {
  final String text;

  const CommonTitleText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Avenir LT Std 65 Medium',
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: HexColor(Colorscommon.lightblack)),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
