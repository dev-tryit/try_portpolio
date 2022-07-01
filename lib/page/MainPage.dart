import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  double appBarSize = 90.0;
  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false, //자동으로 생기는 뒤로가기 버튼 없애기
              pinned: true, // 축소시 상단에 AppBar가 고정되는지 설정
              shadowColor: Colors.transparent,
              toolbarHeight: appBarSize, //헤더의 기본 높이
              expandedHeight: appBarSize, // 헤더의 최대 높이
              collapsedHeight: appBarSize, //헤더의 최소 높이
              titleSpacing: 0, //왼쪽,오른쪽 너비
              title: Container(
                height: appBarSize,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("f"),
                    Spacer(),
                    Text("b"),
                  ],
                ),
              ), //SliverAppBar 맨 위에 붙어있음.
              // flexibleSpace: FlexibleSpaceBar( //FlexibleSpaceBar는 SliverAppBar 맨 아래에 붙어있음, 스크롤하면, 크기가 줄어들음
              //   titlePadding: EdgeInsets.zero,
              //   title: Container(color:Colors.red,height:200,child: Text('Sliver')),
              //   // background: Image.asset(
              //   //   'assets/IMG_9245.jpeg',
              //   //   fit: BoxFit.cover,
              //   // ),
              // ),
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
