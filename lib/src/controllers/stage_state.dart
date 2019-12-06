import 'package:boloids/src/models/level/level.dart';
import 'package:boloids/src/models/stage.dart';
import 'package:flutter/Material.dart';

/*

The StageStateController is called by the GameStateController

StageStateController calles the LevelStateController

The StageSTateController decides the complexity of the Levels that are playyed at this stage
within same Stage, the Level Difficulties are similar and may ony increase in complexity slightly

The aim of the game is to pass each Stage and to pass each stage the player has to achieve certain goals

ToDO: Define Goals Class and control
Goals to be achieved increase in difficulty with each stage

Example Goals within stage
1. X points won in stage
2. no more than y points lost
3. skills based targets
  a) at least once during the stage - have toughed 5 targets within 2 seconds 
  b) ...
  Can't progress to next stage until all tagets met, but can play as many levels as necessary within Stage to achieve the goals




*/

class StageState with ChangeNotifier {
  Stage _stage;
  Level _activeLevel;

  StageState() {
    print('Created: StageState');
  }

  Level get activeLevel => _activeLevel;
  set activeLevel(Level activeLevel) {
    _activeLevel = activeLevel;
    notifyListeners();
  }

  Stage get stage => _stage;
  set stage(Stage stage) {
    _stage = stage;
    activeLevel = stage.levels[0];
    notifyListeners();
  }
}
