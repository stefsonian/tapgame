import 'package:boloids/src/models/game.dart';
import 'package:boloids/src/models/level/level.dart';
import 'package:boloids/src/models/target.dart';
import 'package:flutter/Material.dart';

/*

LevelStateController tracks status of Level e.g.:
a)	Creates instance of Level()
a.	See Class Level
b)	Provides function Level.next()
a.	Looks at current Game settings to and provides next level to Game based on GameSettings
c)	Calls next Target via TargetStateController.next()


*/

class LevelStateController with ChangeNotifier {

Level nextLevel() => Level();


}