import 'package:flutter/material.dart';

class ViewColumn extends StatefulWidget {
  const ViewColumn({super.key});

  @override
  State<ViewColumn> createState() => _ViewColumnState();
}

class _ViewColumnState extends State<ViewColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column View"), backgroundColor: Colors.blue),
      body: Container(
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 50),
            Spacer(),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
    );
  }
}
