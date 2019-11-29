import 'package:boloids/src/models/target.dart';
import 'package:flutter/Material.dart';

class GameState with ChangeNotifier {
  Target _target = Target();
  Target get target => _target;
  set target(Target target) {
    _target = target;
    notifyListeners();
  }

  void onTargetHit() {
    _target.onHit();
    notifyListeners();
  }
}
