import 'package:hive_flutter/hive_flutter.dart';

class HiveBoxes {
  static Box get appCache => Hive.box('appCache');
}
