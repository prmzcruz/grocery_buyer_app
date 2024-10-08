import 'package:flutter/material.dart';
import 'Colors.dart';
import 'CommonColor.dart';

class CommonText extends StatelessWidget implements PreferredSizeWidget {
  final String text;

  const CommonText({super.key, required this.text});


  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(
        fontFamily: 'Avenir LT Std 65 Medium',
        fontWeight: FontWeight.w500,
        fontSize: 15,
        color: HexColor(
            Colorscommon.greydark2)),);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class Avenirtextbook extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final double fontsize;
  final Color textcolor;
  final FontWeight customfontweight;

  const Avenirtextbook(
      {Key? key,
        required this.text,
        required this.fontsize,
        required this.textcolor,
        required this.customfontweight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'AvenirLTStd-Book',
          fontSize: fontsize,
          color: textcolor,
          fontWeight: FontWeight.w500),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class Avenirtextmedium extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final double fontsize;
  final Color textcolor;
  final FontWeight customfontweight;

  const Avenirtextmedium(
      {Key? key,
        required this.text,
        required this.fontsize,
        required this.textcolor,
        required this.customfontweight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Avenir LT Std 65 Medium',
          fontSize: fontsize,
          color: textcolor,
          fontWeight: FontWeight.w500),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class Avenirtextblack extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final double fontsize;
  final Color textcolor;
  final FontWeight customfontweight;

  const Avenirtextblack(
      {Key? key,
        required this.text,
        required this.fontsize,
        required this.textcolor,
        required this.customfontweight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'AvenirLTStd-Black',
          fontSize: fontsize,
          color: textcolor,
          fontWeight: FontWeight.w500),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
