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
            appBarSize: 85,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(flex: 9),
                MyTexts.gmarketSans.text("TryIt.",
                    style: const TextStyle(fontWeight: FontWeight.w900)),
                const Spacer(flex: 100 - (7 + 9)),
                RowSeparated<MyMenu>(
                  mainAxisSize: MainAxisSize.min,
                  items: menuList,
                  builder: (e) => MyTexts.gmarketSans.text(
                    e.label,
                    style: const TextStyle(
                        fontSize: 20.15, fontWeight: FontWeight.w500),
                    strokeWidth: 0.6,
                  ),
                  separatorWidget: const SizedBox(width: 48),
                ),
                const Spacer(flex: 9),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(flex: 7),
                      Expanded(
                        flex: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 40),
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
                                const Positioned(
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
                              "${DateTime.now().year}년 현재, Dart-Flutter 기술 스택을 활용하여 프리랜서로 활동하고 있습니다. 프리랜서 이전에는, 네오위즈에서 인증, 결제, 친구, 메시지 기능을 위한 서버 및 SDK의 개발 및 유지보수 업무를 진행하였습니다.",
                              style: const TextStyle(
                                fontSize: 18,
                                color: MyTheme.normalTextGreyColor,
                              ),
                            ),
                            const SizedBox(height: 80),
                            MovingPageButton("포트폴리오 보러가기", onPressed: () {}),
                          ],
                        ),
                      ),
                      const Spacer(flex: 10),
                      const Image(
                        image: MyImage.profileWithBackground,
                        fit: BoxFit.fill,
                        height: 630,
                      ),
                      const Spacer(flex: 7),
                    ],
                  ),
                ),
                const SizedBox(height: 200),
                SizedBox(
                    width: double.infinity,
                    child: MyTexts.gmarketSans.text("타임라인",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 51, fontWeight: FontWeight.w800))),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
