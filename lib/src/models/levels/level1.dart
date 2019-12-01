import 'package:boloids/src/models/levels/level.dart';
import 'package:boloids/src/models/target.dart';

class Level1 extends Level {
  Level1() {
    // initialise this level with one target
    targets.add(Target());
    name = 'Level 1';
  }
}
