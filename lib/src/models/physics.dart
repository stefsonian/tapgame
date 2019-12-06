class Physics {
// Target physics (all start with the letter t)
  double tStartSize;
  double tMinSize;
  double tMaxSize;
  bool tCanBeEvil = false;
  bool tCanGrow = false;
  bool tCanShrink = false;

  Physics();

  Physics.withDefaults() {
    tStartSize = 60.0;
    tMinSize = 60.0;
    tMaxSize = 60.0;
  }
}
