import 'package:boloids/src/controllers/game_state.dart';
import 'package:boloids/src/models/game.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GameState gameState = Provider.of<GameState>(context);
    return Container(
      alignment: Alignment.center,
      child: FloatingActionButton.extended(
        icon: Icon(Icons.star),
        label: Text('Create objects'),
        onPressed: () => gameState.game = Game(),
      ),
    );
  }
}
