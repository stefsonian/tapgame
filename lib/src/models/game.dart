import 'package:boloids/src/models/levels/level1.dart';
import 'package:flutter/foundation.dart';
import 'package:boloids/src/models/levels/level.dart';

class Game {
  List<Level> levels = [];
  int currentLevelIndex = 0;

  Game({@required this.levels});

  Game.withDefaultLevels() {
    levels.add(Level1());
  }

  Level get currentLevel => levels[currentLevelIndex];
  int get currentLevelScore => levels[currentLevelIndex].score;
  int get totalScore => levels.fold(0, (prev, next) => prev + next.score);
  void get resetScores => levels.forEach((lvl) => lvl.resetScore);
}
