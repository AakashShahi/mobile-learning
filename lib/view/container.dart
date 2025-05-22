import 'package:flutter/material.dart';

class ContainerView extends StatefulWidget {
  const ContainerView({super.key});

  @override
  State<ContainerView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ContainerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Conatiner view")),
      body: SafeArea(
        child: Container(
          alignment: Alignment.centerRight,
          child: Container(
            height: 200,
            width: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amber,
              border: Border.all(color: Colors.blue, width: 4),
            ),
            child: const Text("I am conatiner"),
          ),
        ),
      ),
    );
  }
}
