import 'package:boloids/src/models/physics.dart';
import 'package:boloids/src/models/target/target.dart';

import 'level.dart';

class ChaseTarget extends Level {
  ChaseTarget(int difficulty) : super(difficulty) {
    print('Created: Level (ChaseTarget) with difficulty $difficulty');
    _createPhysics();
    _addTargets();
  }

  _createPhysics() {
    physics = Physics.withDefaults();
    // set physics params according to difficulty
  }

  _addTargets() {
    // add targets according to difficulty
    targets.add(Target());
  }
}
