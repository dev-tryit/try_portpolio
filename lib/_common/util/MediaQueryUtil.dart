import 'package:flutter/material.dart';

class MediaQueryUtil {
  static Size getScreenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }


  static double getKeyboardHeight(BuildContext context) {
    return MediaQuery.of(context).viewInsets.bottom;
  }

}
