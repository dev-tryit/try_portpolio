import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:try_portpolio/_common/widget/RowSeparated.dart';
import 'package:try_portpolio/model/MyMenu.dart';
import 'package:try_portpolio/util/MyComponents.dart';
import 'package:try_portpolio/util/MyEmoji.dart';
import 'package:try_portpolio/util/MyImage.dart';
import 'package:try_portpolio/util/MyTheme.dart';

import '../util/MyTexts.dart';
import '../widget/MovingPageButton.dart';

class MainPage extends StatelessWidget {
  List<MyMenu> menuList = [
    MyMenu("소개"),
    MyMenu("포트폴리오"),
    MyMenu("기술스택"),
    MyMenu("연락처"),
  ];

  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MyComponents.fixedSliverAppBar(
            appBarSize: 90,
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyTexts.gmarketSans.bold("TryIt."),
                const Spacer(),
                RowSeparated<MyMenu>(
                  mainAxisSize: MainAxisSize.min,
                  items: menuList,
                  builder: (e) => MyTexts.gmarketSans.medium(
                    e.label,
                    style: const TextStyle(fontSize: 20.15),
                    strokeWidth: 0.6,
                  ),
                  separatorWidget: const SizedBox(width: 45),
                )
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(height: 140),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(flex: 7),
                      Expanded(
                        flex: 50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                MyTexts.gmarketSans.text("안녕하세요",
                                    style: const TextStyle(
                                      fontSize: 31,
                                      fontWeight: FontWeight.w500,
                                      color: MyTheme.highlightOrangeColor,
                                    ),
                                    strokeWidth: 0.5),
                                Positioned(
                                  left: -33,
                                  top: -33,
                                  child: Text(
                                    MyEmoji.wavingHand,
                                    style: TextStyle(fontSize: 32),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 28),
                            MyTexts.gmarketSans.text("프리랜서 개발자",
                                style: const TextStyle(
                                  fontSize: 37,
                                  fontWeight: FontWeight.w700,
                                  color: MyTheme.highlightGreenColor,
                                )),
                            MyTexts.gmarketSans.text("김동현입니다",
                                style: const TextStyle(
                                    fontSize: 78, fontWeight: FontWeight.w700)),
                            const SizedBox(height: 28),
                            MyTexts.gmarketSans.text(
                              "생산성 있는 개발과 유지보수하기 좋은 코드를 지향합니다.\n\n"
                              "${DateTime.now().year}년 현재, Dart-Flutter 기술 스택을 활용하여 프리랜서로 활동하고 있습니다.\n"
                              "주요 이력으로는, 네오위즈에서 인증,결제,친구,메시지의 서버 및 SDK의 개발 및 유지보수 업무가 있습니다.",
                              style: TextStyle(
                                fontSize: 18,
                                color: MyTheme.normalTextGreyColor,
                              ),
                            ),
                            const SizedBox(height: 80),
                            MovingPageButton("포트폴리오 보러가기", onPressed:(){}),
                          ],
                        ),
                      ),
                      Spacer(flex: 10),
                      Expanded(
                        flex: 30,
                        child: Image(
                          image: MyImage.profileWithBackground,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Spacer(flex: 7),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
