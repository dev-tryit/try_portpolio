import 'package:flutter/material.dart';
import 'package:try_portpolio/_common/widget/OnHover.dart';
import 'package:try_portpolio/util/MyImage.dart';
import 'package:try_portpolio/util/MyTexts.dart';
import 'package:try_portpolio/util/MyTheme.dart';

class MovingPageButton extends StatelessWidget {
  String data;
  VoidCallback onPressed;

  MovingPageButton(this.data, {Key? key, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (isHover) {
        print("hover : $isHover");
      },
      child: OnHover(
        builder: (isHovered) => ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              primary: MyTheme.highlightPuppleColor,
              padding: const EdgeInsets.only(
                  top: 22, bottom: 22, left: 30, right: 30)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              MyTexts.gmarketSans.text(data,
                  style: TextStyle(
                      fontSize: 19,
                      color: MyTheme.invertedNormalTextColor,
                      fontWeight: FontWeight.w500,
                      decoration: isHovered ? TextDecoration.underline : null,
                      decorationThickness: 2),
                  strokeWidth: 0.7),
              const SizedBox(width: 8),
              MyImage.movePageIcon,
            ],
          ),
        ),
      ),
    );
  }
}
