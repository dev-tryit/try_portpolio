import 'package:flutter/material.dart';
import 'package:try_portpolio/util/MyComponents.dart';

class MainPage extends StatelessWidget {
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
                  Text("f"),
                  Spacer(),
                  Text("b"),
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
