import 'package:flutter/material.dart';

class GridScreenView extends StatefulWidget {
  const GridScreenView({super.key});

  @override
  State<GridScreenView> createState() => _GridScreenViewState();
}

class _GridScreenViewState extends State<GridScreenView> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid View"), backgroundColor: Colors.blue),
      body: GridView.count(
        padding: const EdgeInsets.all(8),
        crossAxisCount: 3,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: [
          for (int i = 1; i <= 10; i++) ...{
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedIndex = i;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    selectedIndex == i ? Colors.green : Colors.amber,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                "$i",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          },
        ],
      ),
    );
  }
}
