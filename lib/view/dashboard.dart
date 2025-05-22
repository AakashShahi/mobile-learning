import 'package:flutter/material.dart';
import 'package:my_project/view/area_circle.dart';
import 'package:my_project/view/armstrong.dart';
import 'package:my_project/view/pallindrome.dart';
import 'package:my_project/view/simpe_interest.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DashBoard"), backgroundColor: Colors.blue),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SimpleInterest(),
                  ),
                );
              },
              child: Text("Simple Interest"),
            ),
          ),
          SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Pallindrome()),
                );
              },
              child: Text("Pallindrome"),
            ),
          ),
          SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AreaCircle()),
                );
              },
              child: Text("Area of Circle"),
            ),
          ),
          SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Armstrong()),
                );
              },
              child: Text("Armstrong Number"),
            ),
          ),
        ],
      ),
    );
  }
}
