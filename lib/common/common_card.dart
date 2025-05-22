import 'package:flutter/material.dart';

class CommonCard extends StatelessWidget {
  final String title;
  final Color color;

  const CommonCard({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
          () => {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Snackbark clicked"),
                duration: Duration(milliseconds: 200),
                backgroundColor: color,
                behavior: SnackBarBehavior.floating,
              ),
            ),
          },
      child: SizedBox(
        width: double.infinity,
        height: 200,
        child: Card(
          color: color,
          shadowColor: Colors.yellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
