import 'package:boloids/src/models/level/chase_target.dart';
import 'package:boloids/src/models/level/level.dart';
import 'package:flutter/cupertino.dart';

class Stage {
  int difficulty;
  List<Level> levels = [];

  Stage({this.difficulty}) {
    levels.add(ChaseTarget(difficulty));
    print('Created: Stage');
  }
}
