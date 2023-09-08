import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red[300],
          appBar:  AppBar(
              title: const Text("Attacks"),
              backgroundColor: Colors.red,
            ),
          body: const Dice(),
          ),
        ),
  );

  }
class Dice extends StatelessWidget {
  const Dice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
