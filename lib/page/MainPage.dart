import 'package:flutter/material.dart';
import 'package:try_portpolio/_common/widget/RowSeparated.dart';
import 'package:try_portpolio/model/MyMenu.dart';
import 'package:try_portpolio/util/MyComponents.dart';
import 'package:try_portpolio/util/MyImage.dart';

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
      body: Container(
        color: Colors.red,
        child: CustomScrollView(
          slivers: [
            MyComponents.fixedSliverAppBar(
              appBarSize: 90,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("TryIt."),
                  Spacer(),
                  RowSeparated<MyMenu>(
                    mainAxisSize: MainAxisSize.min,
                    items: menuList,
                    builder: (e) => Text(e.label),
                    separatorWidget: SizedBox(width: 45),
                  )
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Row(
                    children: [
                      Expanded(
                        flex: 55,
                        child: Column(
                          children: [
                            Text("안녕하세요"),
                            Text("프리랜서 개발자"),
                            Text("김동현입니다"),
                            Text(
                                "생산성 있는 개발과 유지보수하기 좋은 코드를 지향합니다.\n2022년 현재, Dart-Flutter 기술 스택을 활용한 프리랜서로 활동하고 있습니다.\n주요 이력으로는, 네오위즈의 모바일플랫폼개발팀에서 Java-SpringBoot을 통한 서버 관리 업무, Java-Android와 C#-Unity를 통한 SDK 개발 및 유지보수 업무를 진행하였습니다."),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 45,
                        child: Image(
                          image: MyImage.randomImage(width: 250, height: 250),
                          fit: BoxFit.fill,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
