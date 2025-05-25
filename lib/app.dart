import 'package:flutter/material.dart';
import 'package:my_project/theme/my_theme.dart';
import 'package:my_project/view/simpe_interest.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),
      home: SimpleInterest(),
      debugShowCheckedModeBanner: false,
    );
  }
}
