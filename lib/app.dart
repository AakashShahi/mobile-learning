import 'package:flutter/material.dart';
import 'package:my_project/view/student_view.dart';
import 'package:my_project/view/table_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TableView(), debugShowCheckedModeBanner: false);
  }
}
