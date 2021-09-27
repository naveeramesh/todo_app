import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class WidgetHelper {
  static Widget nunito(String msg, int space, int size, Color color) {
    return Text(
      msg,
      textAlign: TextAlign.center,
      style: GoogleFonts.nunito(
        letterSpacing: space.toDouble(),
        textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: size.toDouble(),
            color: color,
            letterSpacing: 0),
      ),
    );
  }

  static Widget snunito(String msg, int space, int size, Color color) {
    return Text(
      msg,
      textAlign: TextAlign.center,
      style: GoogleFonts.nunito(
        letterSpacing: space.toDouble(),
        textStyle: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: size.toDouble(),
            color: color,
            letterSpacing: 0),
      ),
    );
  }
}
