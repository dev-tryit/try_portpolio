import 'dart:async';

import 'package:flutter/material.dart';

import 'LogUtil.dart';

class ErrorUtil {
  static void catchError(Future<void> Function() init) {
    runZonedGuarded(() async {
      WidgetsFlutterBinding.ensureInitialized();
      FlutterError.onError = (FlutterErrorDetails details) {
        // FlutterError.presentError(details);
        LogUtil.error("FlutterError.onError error:${details.exception.toString()}, stack:${details.stack.toString()}");
      };

      await init();
    }, (Object error, StackTrace stack) {
      LogUtil.error("runZonedGuarded error:${error.toString()}, stack:${stack.toString()}");
    });
  }
}