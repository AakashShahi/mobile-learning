import 'package:flutter/material.dart';

class Pallindrome extends StatefulWidget {
  const Pallindrome({super.key});

  @override
  State<Pallindrome> createState() => _PallindromeState();
}

class _PallindromeState extends State<Pallindrome> {
  String inputText = '';
  String result = '';

  void checkPalindrome(String value) {
    String cleaned = value.replaceAll(RegExp(r'\s+'), '').toLowerCase();
    String reversed = cleaned.split('').reversed.join('');
    setState(() {
      if (cleaned == reversed && cleaned.isNotEmpty) {
        result = "It's a palindrome!";
      } else {
        result = "Not a palindrome.";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Palindrome Checker"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Enter text"),
              onChanged: (value) {
                inputText = value;
                checkPalindrome(value);
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
