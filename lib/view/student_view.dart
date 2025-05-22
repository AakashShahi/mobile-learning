import 'package:flutter/material.dart';
import 'package:my_project/model/student.dart';

class StudentListView extends StatefulWidget {
  const StudentListView({super.key});

  @override
  State<StudentListView> createState() => _StudentListViewState();
}

class _StudentListViewState extends State<StudentListView> {
  final List<String> _cities = [
    'Kathmandu',
    'Pokhara',
    'Biratnagar',
    'Lalitpur',
    'Butwal',
  ];
  final List lstStudents = [];
  String? _selectedCity;
  final _fromKey = GlobalKey<FormState>();
  final fnameController = TextEditingController();
  final lnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student List View")),
      body: Form(
        key: _fromKey,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "First Name",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                ),
                controller: fnameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter your first name";
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Last Name",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                ),
                controller: lnameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter your last name";
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: "Select City",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                ),
                value: _selectedCity,
                items:
                    _cities
                        .map(
                          (city) =>
                              DropdownMenuItem(value: city, child: Text(city)),
                        )
                        .toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedCity = value;
                  });
                },
                validator: (value) {
                  if (value == null) {
                    return "Please select city";
                  }
                  return null;
                },
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    if (_fromKey.currentState!.validate() &&
                        _selectedCity != null) {
                      Student student = Student(
                        fname: fnameController.text,
                        lname: lnameController.text,
                        city: _selectedCity!,
                      );

                      setState(() {
                        lstStudents.add(student);
                      });
                    }
                  },
                  child: Text(
                    "Add Sudent",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 120, 141),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "View Sudent",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child:
                    lstStudents.isNotEmpty
                        ? ListView.builder(
                          itemCount: lstStudents.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: const Icon(Icons.person_2),
                              title: Text(
                                "${lstStudents[index].fname} ${lstStudents[index].lname}",
                              ),
                              subtitle: Text(lstStudents[index].city),
                              trailing: IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () {
                                  setState(() {
                                    lstStudents.removeAt(index);
                                  });
                                },
                              ),
                              onTap: () {},
                            );
                          },
                        )
                        : const Text("No data"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
