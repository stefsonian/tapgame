/*

GameStateController tracks status of Game e.g.:
a)	Number of Players
b)	Creates instance of Game()
a.	Game Total Score (derived value from all levels played so far
b.	Game Settings (Game Complexity Beginner/Good/Master etc)
c)	Calls next level via LevelStateController.next()
a.	CurrentLevel = LevelSTateController.next()
d)	Future function: Store List/Array of all Levels generated in game

*/

import 'package:boloids/src/models/game.dart';
import 'package:boloids/src/models/stage.dart';
import 'package:flutter/cupertino.dart';

class GameState with ChangeNotifier {
  Game _game;

  GameState() {
    game = Game();
    print('Created: GameState');
  }

  Game get game => _game;
  set game(Game game) {
    _game = game;
    notifyListeners();
  }

  Stage get activeStage => game.activeStage;
}
