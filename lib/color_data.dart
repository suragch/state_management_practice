import 'package:flutter/material.dart';

Color getNextColor(int currentIndex) {
  int nextIndex = currentIndex + 1;
  return colorList[nextIndex % 10];
}

final colorList = [
  Colors.red,
  Colors.blue,
  Colors.amber,
  Colors.purple,
  Colors.purple.shade100,
  Colors.purple.shade900,
  Color.fromARGB(255, 15, 172, 20),
  Colors.orange,
  Colors.black,
  Colors.white,
];
