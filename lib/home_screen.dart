import 'package:changing_ui/home_screen_manager.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenManager manager = HomeScreenManager();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Color>(
        valueListenable: manager.colorNotifier,
        builder: (context, color, child) {
          return Scaffold(
            backgroundColor: color,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ValueListenableBuilder<int>(
                    valueListenable: manager.counterNotifier,
                    builder: (context, value, child) {
                      return Text(
                        '${value / 10}'.padLeft(2, '0'),
                        style: TextStyle(fontSize: 30),
                      );
                    },
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          manager.startTimer();
                        },
                        child: Text('Start'),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          manager.stopTimer();
                        },
                        child: Text('Stop'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
