import 'package:boloids/src/models/target.dart';

class Level {
  List<Target> targets = [];
  Duration duration = Duration(seconds: 15);
  int score = 0;
  String name = '';

  Level();

  Target get singleTarget => targets[0];

  void get resetScore => score = 0;
}
