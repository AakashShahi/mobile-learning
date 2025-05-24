import 'package:flutter/material.dart';
import 'package:my_project/model/student.dart';

class OutputView extends StatelessWidget {
  const OutputView({super.key, required this.student});
  final Student student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student View")),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("First Name: ${student.fname}"),
              Text("LastName: ${student.lname}"),
              Text("City: ${student.city}"),
            ],
          ),
        ),
      ),
    );
  }
}
