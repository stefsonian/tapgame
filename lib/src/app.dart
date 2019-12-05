import 'package:boloids/src/screens/arena/arena_screen.dart';
import 'package:boloids/src/controllers/gameStateController.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<GameStateController>.value(
          value: GameStateController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: ArenaScreen(),
        ),
      ),
    );
  }
}
