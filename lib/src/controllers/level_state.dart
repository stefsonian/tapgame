import 'package:boloids/src/models/level/level.dart';
import 'package:boloids/src/models/target/target.dart';
import 'package:flutter/Material.dart';

/*

LevelStateController tracks status of Level e.g.:
a)	Creates instance of Level()
a.	See Class Level
b)	Provides function Level.next()
a.	Looks at current Game settings to and provides next level to Game based on GameSettings
c)	Calls next Target via TargetStateController.next()


*/

class LevelState with ChangeNotifier {
  Level _level;
  int _currentTargetIndex = 0;

  LevelState() {
    print('Created: LevelState');
  }

  Level get level => _level;
  set level(Level level) {
    _level = level;
    notifyListeners();
  }

  get targets => level.targets;

  Target nextTarget() {
    var returnIndex = _currentTargetIndex;
    _currentTargetIndex += 1;
    if (_currentTargetIndex == level.targets.length) _currentTargetIndex = 0;
    return level.targets[returnIndex];
  }
}
