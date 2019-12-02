import 'package:boloids/src/components/target_circle.dart';
import 'package:boloids/src/screens/arena/game_field.dart';
import 'package:boloids/src/screens/arena/game_status.dart';
import 'package:boloids/src/services/game_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ArenaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GameState gameState = Provider.of<GameState>(context);
    return SafeArea(
      child: Container(
        child: Stack(
          children: <Widget>[
            GameStatus(),
            GameField(),
          ],
        ),
      ),
    );
  }
}
