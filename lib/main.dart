import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

import 'MySetting.dart';
import '_common/config/MyCustomScrollBehavior.dart';
import '_common/util/ErrorUtil.dart';
import '_common/util/InteractionUtil.dart';
import 'page/MainPage.dart';
import 'util/MyEmoji.dart';
import 'util/MyStoreUtil.dart';
import 'util/MyTexts.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

Future<void> main() async {
  ErrorUtil.catchError(() async {
    await MyStoreUtil.init();
    // await AuthUtil.me.init();
    // await Firebase.initializeApp(
    //   options: DefaultFirebaseOptions.currentPlatform,
    // );

    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MySetting.webTitle,
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.light(),
        fontFamily: MyTexts.gmarketSans.name
      ),
      builder: (context, child) {
        child = InteractionUtil.builder()(context, child);
        return child;
      },
      navigatorObservers: [BotToastNavigatorObserver()],
      home: MainPage(),
    );
  }
}