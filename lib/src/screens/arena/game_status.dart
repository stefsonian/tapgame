import 'package:boloids/src/services/game_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GameStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GameState gameState = Provider.of<GameState>(context);
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                gameState.game.currentLevel.name,
                style: _txtStyle,
              ),
              Text(
                'Level Score: ${gameState.game.currentLevelScore}',
                style: _txtStyle,
              ),
              Text(
                'Total Score: ${gameState.game.totalScore}',
                style: _txtStyle,
              ),
            ],
          ),
          SizedBox(height: 15),
          Text(
            'Time: ${gameState.game.currentLevel.duration.inSeconds}',
            style: _txtStyle,
          ),
        ],
      ),
    );
  }
}

TextStyle _txtStyle = TextStyle(
  fontSize: 14,
  letterSpacing: 1.2,
);
