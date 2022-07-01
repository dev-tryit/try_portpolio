import 'package:flutter/material.dart';
import 'package:try_portpolio/_common/widget/RowSeparated.dart';
import 'package:try_portpolio/model/MyMenu.dart';
import 'package:try_portpolio/util/MyComponents.dart';

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
                List.generate(100, (index) => Text("test")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
