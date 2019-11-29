import 'package:boloids/src/models/target.dart';
import 'package:boloids/src/services/game_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TargetCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GameState gameState = Provider.of<GameState>(context);
    return GestureDetector(
      onTap: () => gameState.onTargetHit(),
      child: Container(
        height: gameState.target.size,
        width: gameState.target.size,
        decoration: BoxDecoration(
          color: gameState.target.color,
          borderRadius: BorderRadius.circular(360),
        ),
      ),
    );
  }
}
