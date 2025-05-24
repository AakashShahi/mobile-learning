import 'package:flutter/material.dart';
import 'package:my_project/model/student.dart';

class TableView extends StatefulWidget {
  const TableView({super.key});

  @override
  State<TableView> createState() => _TableViewState();
}

class _TableViewState extends State<TableView> {
  List<Student> lstStudent = [
    Student(fname: "Shubham", lname: "Khanel"),
    Student(fname: "Aman", lname: "Shahi"),
    Student(fname: "Aayush", lname: "Shrestha"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Table View")),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: DataTable(
                headingRowColor: MaterialStateColor.resolveWith(
                  (states) => Colors.amber,
                ),
                columns: const [
                  DataColumn(
                    label: Expanded(
                      child: Text("First Name", textAlign: TextAlign.center),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(child: Center(child: Text("Last Name"))),
                  ),
                  DataColumn(
                    label: Expanded(child: Center(child: Text("Action"))),
                  ),
                ],
                rows:
                    lstStudent
                        .map(
                          (student) => DataRow(
                            cells: [
                              DataCell(Text(student.fname)),
                              DataCell(Text(student.lname)),
                              DataCell(
                                Wrap(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        setState(() {});
                                      },
                                      icon: Icon(Icons.edit),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          lstStudent.remove(student);
                                        });
                                      },
                                      icon: Icon(Icons.delete),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                        .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
