import 'package:flutter/material.dart';
import 'package:my_project/model/arithemetic_model.dart';

class Arithemeticnewview extends StatefulWidget {
  const Arithemeticnewview({super.key});

  @override
  State<Arithemeticnewview> createState() => _ArithemeticnewviewState();
}

class _ArithemeticnewviewState extends State<Arithemeticnewview> {
  late ArithmeticModel arithmeticModel;

  int result = 0;

  final firstContoller = TextEditingController();
  final secondContoller = TextEditingController();

  final myKey = GlobalKey<FormState>();

  String? groupValue = "myGroup";

  void calculate() {
    arithmeticModel = ArithmeticModel(
      first: int.parse(firstContoller.text),
      second: int.parse(secondContoller.text),
    );

    if (groupValue == "add") {
      setState(() {
        result = arithmeticModel.add();
      });
    } else if (groupValue == "sub") {
      setState(() {
        result = arithmeticModel.sub();
      });
    } else if (groupValue == "mul") {
      setState(() {
        result = arithmeticModel.mul();
      });
    } else if (groupValue == "div") {
      setState(() {
        result = arithmeticModel.div().toInt();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Arithmetic View"),
        centerTitle: true,
        backgroundColor: Colors.amber,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: myKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter first no',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.amber, width: 2),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  controller: firstContoller,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter first number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter second no',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.amber, width: 2),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter second number';
                    }
                    return null;
                  },
                  controller: secondContoller,
                ),
                SizedBox(height: 8),
                ListTile(
                  title: const Text('Addition'),
                  leading: Radio(
                    value: 'add',
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Subtraction'),
                  leading: Radio(
                    value: 'sub',
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Multiplication'),
                  leading: Radio(
                    value: 'mul',
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Division'),
                  leading: Radio(
                    value: 'div',
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value!;
                      });
                    },
                  ),
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
                      if (myKey.currentState!.validate()) {
                        calculate();
                      }
                    },
                    child: Text("Calculate"),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Result : $result",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
