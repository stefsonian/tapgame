import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../components/target_circle.dart';
import '../../services/game_state.dart';

class GameField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GameState gameState = Provider.of<GameState>(context);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var targetSize = 80.0;
    gameState.setBounds(
        maxHeight: height - (targetSize + 40), maxWidth: width - targetSize);
    gameState.setTargetSize(targetSize);
    gameState.moveTargetRandom;
    // TODO: Find a better spot for above logic

    return Positioned(
      top: max(40.0, gameState.game.currentLevel.firstTarget.offset.dy),
      left: gameState.game.currentLevel.firstTarget.offset.dx,
      child: TargetCircle(),
    );
  }
}
