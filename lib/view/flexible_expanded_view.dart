import 'package:flutter/material.dart';
import 'package:my_project/common/my_snackbar.dart';

class FlexibleExpandedView extends StatelessWidget {
  const FlexibleExpandedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flexible expanded")),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GestureDetector(
                onDoubleTap: () {
                  showMySnackBar(
                    context: context,
                    content: "Container 1 tapped",
                  );
                },
                child: Container(
                  width: double.infinity,
                  color: Colors.yellow,
                  alignment: Alignment.center,
                  child: const Text(
                    "Container 1",
                    style: TextStyle(fontSize: 50, color: Colors.black),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  showMySnackBar(
                    context: context,
                    content: "Container 2 tapped",
                    color: Colors.red,
                  );
                },
                child: Container(
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: const Text(
                    "Container 2",
                    style: TextStyle(fontSize: 50, color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
