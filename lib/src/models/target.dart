import 'dart:math';

import 'package:flutter/material.dart';

class Target {
  Color goodColor;
  Color evilColor;
  bool isEvil;
  int point;
  double size;
  Offset offset;
  double maxXoffset;
  double maxYoffset;

  Target(
      {this.goodColor = Colors.green,
      this.evilColor = Colors.red,
      this.point = 1,
      this.size = 50,
      this.maxXoffset,
      this.maxYoffset,
      this.isEvil = false});

  void onHit() {
    // small change of target becoming evil when it's hit
    bool shouldBecomeEvil = (Random().nextInt(5) == 4 && !isEvil);
    isEvil = shouldBecomeEvil ? true : false;
    moveRandom();
  }

  void moveRandom() {
    double x = Random().nextDouble() * maxXoffset;
    double y = Random().nextDouble() * maxYoffset;
    offset = Offset(x, y);
  }

  Color get color => isEvil ? evilColor : goodColor;
}
