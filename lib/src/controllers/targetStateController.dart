import 'package:boloids/src/models/game.dart';
import 'package:boloids/src/models/target.dart';
import 'package:flutter/Material.dart';


/*

a)	Creates instance of Target (see Target Class)
b)	Provides function nextTarget()
a.	Looks at current Level settings to provides next Target to game based on Level instance settings
c) The LevelStateController request the next Target to be provided to the Level


*/

class TargetStateController with ChangeNotifier {


// return new target on request
// TODO: currently no argumetns, but this method should be able to look up from what Level it was called
// thus look up level settings and based on that determine the characteristics of the Target, e.g. Speed, etc.

 Target nextTarget() => Target();

}