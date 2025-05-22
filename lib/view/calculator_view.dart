import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  final TextEditingController _controller = TextEditingController();
  double firstNumber = 0;
  String operator = '';
  bool isSecondNumber = false;

  List digits = [
    "C",
    "*",
    "/",
    "<-",
    "1",
    "2",
    "3",
    "+",
    "4",
    "5",
    "6",
    "-",
    "7",
    "8",
    "9",
    "*",
    "%",
    "0",
    ".",
    "=",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator App"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          TextFormField(
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            decoration: InputDecoration(
              labelText: "Enter Rate",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.black, width: 2),
              ),
            ),
            keyboardType: TextInputType.number,
            controller: _controller,
            textAlign: TextAlign.right,
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              padding: const EdgeInsets.all(8),
              children: [
                for (int i = 0; i < digits.length; i++)
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        String value = digits[i];

                        switch (value) {
                          case "C":
                            _controller.clear();
                            firstNumber = 0;
                            operator = '';
                            isSecondNumber = false;
                            break;

                          case "<-":
                            if (_controller.text.isNotEmpty) {
                              _controller.text = _controller.text.substring(
                                0,
                                _controller.text.length - 1,
                              );
                            }
                            break;

                          case "+":
                          case "-":
                          case "*":
                          case "/":
                          case "%":
                            if (_controller.text.isNotEmpty) {
                              firstNumber =
                                  double.tryParse(_controller.text) ?? 0;
                              operator = value;
                              _controller.clear();
                              isSecondNumber = true;
                            }
                            break;

                          case "=":
                            if (_controller.text.isNotEmpty &&
                                operator.isNotEmpty) {
                              double secondNumber =
                                  double.tryParse(_controller.text) ?? 0;
                              double result = 0;

                              switch (operator) {
                                case "+":
                                  result = firstNumber + secondNumber;
                                  break;
                                case "-":
                                  result = firstNumber - secondNumber;
                                  break;
                                case "*":
                                  result = firstNumber * secondNumber;
                                  break;
                                case "/":
                                  result =
                                      secondNumber != 0
                                          ? firstNumber / secondNumber
                                          : double.nan;
                                  break;
                                case "%":
                                  result = firstNumber % secondNumber;
                                  break;
                              }

                              _controller.text = result.toString();
                              operator = '';
                              isSecondNumber = false;
                            }
                            break;

                          default:
                            _controller.text += value;
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.all(12),
                    ),
                    child: Text(
                      digits[i],
                      style: const TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
