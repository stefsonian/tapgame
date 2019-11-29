import 'package:boloids/src/screens/arena/arena_screen.dart';
import 'package:boloids/src/services/game_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<GameState>.value(
          value: GameState(),
        ),
      ],
      child: MaterialApp(
        home: Scaffold(
          body: ArenaScreen(),
        ),
      ),
    );
  }
}
