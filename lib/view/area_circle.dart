import 'package:flutter/material.dart';

class AreaCircle extends StatefulWidget {
  const AreaCircle({super.key});

  @override
  State<AreaCircle> createState() => _AreaCircleState();
}

class _AreaCircleState extends State<AreaCircle> {
  double radius = 0;
  double pi = 0;
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Area of Circle"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: "Give radius"),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              radius = double.parse(value);
            },
          ),
          SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(labelText: "Give Pi value Optional"),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              pi = double.parse(value);
            },
          ),
          SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  result = pi * radius * radius;
                });
              },
              child: Text("Calculate"),
            ),
          ),
          Text("Result: $result"),
        ],
      ),
    );
  }
}
