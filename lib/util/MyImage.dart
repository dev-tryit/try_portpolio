import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:try_portpolio/util/MyTheme.dart';

class MyImage {
  // static const NetworkImage profile = NetworkImage(
  //     'https://storage.googleapis.com/archive-319715.appspot.com/portfolios/images/profile');

  static NetworkImage randomImage(
          {required double width, required double height}) =>
      NetworkImage('https://picsum.photos/$width/$height');
  static const NetworkImage constRandomImage =
      NetworkImage('https://picsum.photos/250/250');
static final SvgPicture movePageIcon = SvgPicture.string('<svg stroke="currentColor" fill="none" stroke-width="0" viewBox="0 0 24 24" focusable="false" class="chakra-icon css-13otjrl" aria-hidden="true" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M14 5l7 7m0 0l-7 7m7-7H3"></path></svg>',
  fit: BoxFit.fill,
  width: 19,
  height: 19,
  color: MyTheme.invertedNormalTextColor,
);
}
