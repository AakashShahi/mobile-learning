import 'package:flutter/material.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  final firstController = TextEditingController();
  final secondController = TextEditingController();
  final thirdController = TextEditingController();
  double si = 0;
  String sitext = "";

  final mykey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest Calculator"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: mykey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter principle",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                ),
                keyboardType: TextInputType.number,
                controller: firstController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a number";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(labelText: "Enter Time"),
                keyboardType: TextInputType.number,
                controller: secondController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a number";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(labelText: "Enter Rate"),
                keyboardType: TextInputType.number,
                controller: thirdController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a number";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 8),
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
                    if (mykey.currentState!.validate()) {
                      //logic
                      double first = double.parse(firstController.text);
                      double second = double.parse(secondController.text);
                      double third = double.parse(thirdController.text);

                      setState(() {
                        si = first * second * third;
                        sitext = si.toString();
                      });
                    }
                  },
                  child: Text("Calculate"),
                ),
              ),
              Container(
                color: Colors.black,
                child: RichText(
                  text: TextSpan(
                    text: "The result is ",
                    style: const TextStyle(color: Colors.blue, fontSize: 30),
                    children: <TextSpan>[
                      TextSpan(
                        text: sitext,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
