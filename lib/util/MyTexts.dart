import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class MyTexts {
  static const gmarketSans = GmarketSans();
}

class FontType {
  final String name;

  Widget text(String data, {TextStyle? style, double? strokeWidth, TextAlign? textAlign}) {
    Widget child = Text(
      data,
      textAlign: textAlign,
      style: (style ?? const TextStyle()).copyWith(fontFamily: name),
    );

    if (strokeWidth != null) {
      child = BorderedText(
        strokeWidth: strokeWidth,
        strokeColor: (child as Text).style?.color??Colors.black,
        child: child as Text,
      );
    }

    return child;
  }

  const FontType(this.name);
}

class GmarketSans extends FontType {
  const GmarketSans() : super("GmarketSans");
}
