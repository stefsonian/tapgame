import 'package:boloids/src/models/stage.dart';

class Game {
  List<Stage> stages = [];
  int activeStageIndex = 0;

//constructore
  Game() {
    print('Created: Game');
    stages.add(Stage(difficulty: 0));
  }

  // TODO: create instance of Game Settings
  // Refers to new Class GameSettings, that defines the mode of game play

  // int get totalScore => stages.fold(0, (prev, next) => prev + next.score);
  // void get resetScores => stages.forEach((lvl) => lvl.resetScore);
  Stage get activeStage => stages[activeStageIndex];
}
