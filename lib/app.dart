import 'package:flutter/material.dart';
import 'package:my_project/view/calculator_view.dart';
import 'package:my_project/view/card_view.dart';
import 'package:my_project/view/grid_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
