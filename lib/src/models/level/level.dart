import 'package:boloids/src/models/target.dart';
import 'dart:math';

class Level {
  List<Target> targets = []; // we may have multiple targets in the same level
  Duration duration = Duration(seconds: 15);
  int score = 0;
  String name = '';
  double speed;

  Level();

  Level.withDefaultTarget() {
    targets.add(Target());
  }

  Target get firstTarget => targets[0]; // return the first target in the list

  void get resetScore => score = 0;
}
