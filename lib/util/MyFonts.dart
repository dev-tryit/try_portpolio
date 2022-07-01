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
  TextStyle light({TextStyle? textStyle}) =>
      (textStyle ?? const TextStyle()).copyWith(fontFamily: name, fontWeight: FontWeight.w100);
  TextStyle medium({TextStyle? textStyle}) =>
      (textStyle ?? const TextStyle()).copyWith(fontFamily: name, fontWeight: FontWeight.w500);
  TextStyle bold({TextStyle? textStyle}) =>
      (textStyle ?? const TextStyle()).copyWith(fontFamily: name, fontWeight: FontWeight.w900);
  const GmarketSans() : super("GmarketSans");
}
