import 'package:boloids/src/controllers/gameStateController.dart';
import 'package:boloids/src/controllers/levelStateController.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/*
This class represents the Target Graphics on the screen

// Move Target_Circle.dart code into here, remove Target_Circle;
*/

class TargetGraphics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GameStateController gameState = Provider.of<GameStateController>(context);
    return GestureDetector(
      
      // TODO: this code has to be housed inside the Level or TargetStateController
      // onTap should only set Target.isTouched = true;
      onTap: () =>
          gameState.onTargetHit(gameState.game.currentLevel.firstTarget),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Container(
          height: gameState.game.currentLevel.firstTarget.size,
          width: gameState.game.currentLevel.firstTarget.size,
          decoration: BoxDecoration(
            color: gameState.game.currentLevel.firstTarget.color,
            borderRadius: BorderRadius.circular(360),
          ),
        ),
      ),
    );
  }
}
