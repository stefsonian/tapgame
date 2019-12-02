import 'package:boloids/src/models/game.dart';
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
    if (target.isEvil) {
      _game.currentLevel.score -= target.evilPoint;
    } else {
      _game.currentLevel.score += target.goodPoint;
    }

    _game.currentLevel.firstTarget.nextAction();
    notifyListeners();
  }

  void setBounds({double maxHeight, double maxWidth}) {
    _game.currentLevel.firstTarget.maxYoffset = maxHeight;
    _game.currentLevel.firstTarget.maxXoffset = maxWidth;
  }

  void setTargetSize(double size) => _game.currentLevel.firstTarget.size = size;

  void get moveTargetRandom => _game.currentLevel.firstTarget.moveRandom();

  Target get singleTarget => _game.currentLevel.firstTarget;
}
