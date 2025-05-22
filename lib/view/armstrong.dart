import 'dart:math';

import 'package:flutter/material.dart';

class Armstrong extends StatefulWidget {
  const Armstrong({super.key});

  @override
  State<Armstrong> createState() => _ArmstrongState();
}

class _ArmstrongState extends State<Armstrong> {
  String inputText = '';
  String result = '';

  void checkArmstrong(String value) {
    int? number = int.tryParse(value);
    if (number == null) {
      setState(() {
        result = "Please enter a valid number.";
      });
      return;
    }

    String numStr = number.toString();
    int power = numStr.length;
    int sum = numStr
        .split('')
        .map((digit) => pow(int.parse(digit), power).toInt())
        .reduce((a, b) => a + b);

    setState(() {
      if (sum == number) {
        result = "It's an Armstrong number!";
      } else {
        result = "Not an Armstrong number.";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Armstrong Number Checker"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Enter a number"),
              onChanged: (value) {
                inputText = value;
                checkArmstrong(value);
              },
            ),
            const SizedBox(height: 20),
            Text(
              result,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}