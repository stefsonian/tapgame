import 'package:boloids/src/controllers/game_state.dart';
import 'package:boloids/src/controllers/level_state.dart';
import 'package:boloids/src/screens/test/test_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controllers/stage_state.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<GameState>.value(
          value: GameState(),
        ),
        ChangeNotifierProxyProvider<GameState, StageState>(
          update: (context, _gameState, _stageState) {
            _stageState.stage = _gameState.activeStage;
            return _stageState;
          },
          create: (context) => StageState(),
        ),
        ChangeNotifierProxyProvider<StageState, LevelState>(
          update: (context, _stageState, _levelState) {
            _levelState.level = _stageState.activeLevel;
            return _levelState;
          },
          create: (context) => LevelState(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: TestScreen(),
        ),
      ),
    );
  }
}
