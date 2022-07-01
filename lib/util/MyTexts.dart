import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class MyTexts {
  static const gmarketSans = GmarketSans();
}

class FontType {
  final String name;

  TextStyle textStyle({TextStyle? textStyle}) =>
      (textStyle ?? const TextStyle()).copyWith(fontFamily: name);

  const FontType(this.name);
}

class GmarketSans extends FontType {
  Widget light(String data, {TextStyle? style, double? strokeWidth}) =>
      _default(data, style: (style??TextStyle()).copyWith(fontWeight: FontWeight.w100), strokeWidth: strokeWidth);
  Widget medium(String data, {TextStyle? style, double? strokeWidth}) =>
      _default(data, style: (style??TextStyle()).copyWith(fontWeight: FontWeight.w500), strokeWidth: strokeWidth);
  Widget bold(String data, {TextStyle? style, double? strokeWidth}) =>
      _default(data, style: (style??TextStyle()).copyWith(fontWeight: FontWeight.w900), strokeWidth: strokeWidth);

  Widget _default(String data, {TextStyle? style, double? strokeWidth}) {
    Widget child = Text(
      data,
      style: (style ?? const TextStyle()).copyWith(fontFamily: name),
    );

    if (strokeWidth != null) {
      child = BorderedText(
        strokeWidth: strokeWidth,
        child: child as Text,
      );
    }

    return child;
  }

  const GmarketSans() : super("GmarketSans");
}
