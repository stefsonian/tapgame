import 'package:boloids/src/components/target_circle.dart';
import 'package:boloids/src/screens/arena/game_status.dart';
import 'package:boloids/src/services/game_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ArenaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Set up target for the game
    GameState gameState = Provider.of<GameState>(context);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var targetSize = 60.0;
    gameState.setBounds(
        maxHeight: height - (targetSize + 100), maxWidth: width - targetSize);
    gameState.setTargetSize(targetSize);
    gameState.moveTargetRandom;

    return SafeArea(
      child: Container(
        // width: width,
        // height: height,
        child: Column(
          children: <Widget>[
            GameStatus(),
            Expanded(
              child: TargetCircle(),
            ),
          ],
        ),
      ),
    );
  }
}
