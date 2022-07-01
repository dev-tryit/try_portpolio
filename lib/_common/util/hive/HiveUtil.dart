
import 'package:hive_flutter/hive_flutter.dart';

class HiveUtil {
  static Future<void> init() async {
    Hive.initFlutter();
  }
}
