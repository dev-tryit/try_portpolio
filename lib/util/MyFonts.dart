import 'package:flutter/material.dart';

class MyFonts {
  static TextStyle gmarketSans({
    TextStyle? textStyle,
  }) {
    textStyle ??= TextStyle();
    return textStyle.copyWith(fontFamily: "GmarketSans");
  }
}
