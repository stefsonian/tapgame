import 'dart:math';
import 'package:boloids/src/models/physics.dart';

import 'package:boloids/src/models/target/target.dart';

class Level {
  List<Target> targets = [];
  List<Object> objects = [];
  Physics physics;
  int score = 0;
  String name;
  int difficulty;

  Level(this.difficulty);
}
