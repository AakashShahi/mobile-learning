import 'package:flutter/material.dart';
import 'package:my_project/common/common_card.dart';

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 0; i < 100; i++) ...{
                //spread operatoe
                if (i % 2 == 0) ...{
                  CommonCard(
                    title: 'I am inside card view  ${i}',
                    color: const Color.fromARGB(255, 96, 86, 0),
                  ),
                } else ...{
                  CommonCard(
                    title: 'I am inside card view  ${i}',
                    color: Colors.blue,
                  ),
                },
              },
            ],
          ),
        ),
      ),
    );
  }
}
