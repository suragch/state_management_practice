import 'dart:async';
import 'package:changing_ui/color_data.dart';
import 'package:flutter/material.dart';

class HomeScreenManager {
  final counterNotifier = ValueNotifier<int>(0);
  final colorNotifier = ValueNotifier<Color>(Colors.red);
  Timer? timer;

  void startTimer() {
    timer ??= Timer.periodic(
      const Duration(milliseconds: 100),
      (timer) {
        counterNotifier.value++;
        colorNotifier.value = getNextColor(counterNotifier.value);
      },
    );
  }

  void stopTimer() {
    timer?.cancel();
  }
}
