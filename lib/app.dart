import 'package:flutter/material.dart';
import 'package:my_project/view/card_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CardView(), debugShowCheckedModeBanner: false);
  }
}
