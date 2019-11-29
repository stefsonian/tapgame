import 'package:boloids/src/components/target_circle.dart';
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
    gameState.target.maxXoffset = width - targetSize;
    gameState.target.maxYoffset = height - (targetSize + 15);
    gameState.target.size = targetSize;
    gameState.target.moveRandom();

    return Container(
      width: width,
      height: height,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: gameState.target.offset.dx,
            top: gameState.target.offset.dy,
            child: TargetCircle(),
          ),
        ],
      ),
    );
  }
}
