import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 29, 26, 26),
        appBar: AppBar(
          title: const Center(
              child: Text(
            " VS Attacks",
            style: TextStyle(
              fontFamily: 'SedgwickAveDisplay-Regular',
            ),
          )),
          backgroundColor: Colors.red,
        ),
        body: const Choose(),
      ),
    ),
  );
}

class Choose extends StatefulWidget {
  const Choose({super.key});

  @override
  State<Choose> createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  int imageno = 12;
  int imageno1 = 5;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/img$imageno.jpg'),
            ),
          ),
          Expanded(
              child: Center(
            child: TextButton(
              onPressed: () {
                setState(() {
                  // Generate a new number for the first image
                  int newNumber = Random().nextInt(12) + 1;
                  // Check if the new number is equal to the current number or the second image number
                  if (newNumber == imageno || newNumber == imageno1) {
                    // If yes, generate another number until they are different
                    while (newNumber == imageno || newNumber == imageno1) {
                      newNumber = Random().nextInt(12) + 1;
                    }
                  }
                  // Assign the new number to the first image number
                  imageno = newNumber;

                  // Generate a new number for the second image
                  newNumber = Random().nextInt(12) + 1;
                  // Check if the new number is equal to the current number or the first image number
                  if (newNumber == imageno1 || newNumber == imageno) {
                    // If yes, generate another number until they are different
                    while (newNumber == imageno1 || newNumber == imageno) {
                      newNumber = Random().nextInt(12) + 1;
                    }
                  }
                  // Assign the new number to the second image number
                  imageno1 = newNumber;
                });
              },
              child: const Text(
                'Vs',
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'SedgwickAveDisplay-Regular',
                ),
              ),
            ),
          )),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/img$imageno1.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
