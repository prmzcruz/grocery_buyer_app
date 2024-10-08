import 'Colors.dart';
import 'CommonColor.dart';
import 'package:flutter/material.dart';

class MandatoryField extends StatelessWidget implements PreferredSizeWidget {
  final String text;

  const MandatoryField({super.key, required this.text});


  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: TextStyle(fontFamily: 'Avenir LT Std 65 Medium',fontWeight: FontWeight.w500,fontSize: 15,color: HexColor(Colorscommon.lightblack)),

        children: const [
          TextSpan(
              text: ' *',
              style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Avenir LT Std 65 Medium",
                  fontSize: 15))
        ]
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
