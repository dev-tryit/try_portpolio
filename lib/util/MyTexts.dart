import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class MyTexts {
  static const gmarketSans = GmarketSans();
}

class FontType {
  final String name;

  TextStyle _textStyle({TextStyle? style}) =>
      (style ?? const TextStyle()).copyWith(fontFamily: name);

  Widget text(String data, {TextStyle? style, double? strokeWidth}) {
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

  const FontType(this.name);
}

class GmarketSans extends FontType {
  Widget light(String data, {TextStyle? style, double? strokeWidth}) =>
      text(data,
          style: style ?? _textStyle(style: TextStyle(fontWeight: FontWeight.w100)),
          strokeWidth: strokeWidth);

  Widget medium(String data, {TextStyle? style, double? strokeWidth}) =>
      text(data,
          style: style ?? _textStyle(style: TextStyle(fontWeight: FontWeight.w500)),
          strokeWidth: strokeWidth);

  Widget bold(String data, {TextStyle? style, double? strokeWidth}) =>
      text(data,
          style: style ?? _textStyle(style: TextStyle(fontWeight: FontWeight.w900)),
          strokeWidth: strokeWidth);

  const GmarketSans() : super("GmarketSans");
}
