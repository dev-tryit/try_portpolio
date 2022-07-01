import 'package:flutter/material.dart';

class MyFonts {
  static const gmarketSans = GmarketSans();
}

class FontType {
  final String name;

  TextStyle textStyle({TextStyle? textStyle}) =>
      (textStyle ?? const TextStyle()).copyWith(fontFamily: name);

  const FontType(this.name);
}

class GmarketSans extends FontType {
  const GmarketSans() : super("GmarketSans");
}
