import 'package:boloids/src/models/game.dart';
import 'package:boloids/src/models/levels/level1.dart';
import 'package:boloids/src/models/target.dart';
import 'package:flutter/Material.dart';

class GameState with ChangeNotifier {
  // Target _target = Target();
  // Target get target => _target;
  // set target(Target target) {
  //   _target = target;
  //   notifyListeners();
  // }

  Game _game = Game.withDefaultLevels();
  Game get game => _game;
  set game(Game game) {
    _game = game;
    notifyListeners();
  }

  void onTargetHit(Target target) {
    _game.currentLevel.score += target.point;
    _game.currentLevel.singleTarget.onHit();
    notifyListeners();
  }

  void setBounds({double maxHeight, double maxWidth}) {
    _game.currentLevel.singleTarget.maxYoffset = maxHeight;
    _game.currentLevel.singleTarget.maxXoffset = maxWidth;
  }

  void setTargetSize(double size) =>
      _game.currentLevel.singleTarget.size = size;

  void get moveTargetRandom => _game.currentLevel.singleTarget.moveRandom();

  Target get singleTarget => _game.currentLevel.singleTarget;
}
