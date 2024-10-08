// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientText extends StatelessWidget {
  const GradientText(
    this.text,
    this.textsize, {super.key,
    required this.gradient,
  });

  final String text;
  final double textsize;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontFamily: 'Avenir LT Std 65 Medium',
              fontWeight: FontWeight.bold,
              // The color must be set to white for this to work
              color: Colors.white,
              fontSize: textsize,
            ),
          )),
    );
  }
}
