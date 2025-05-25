import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  const StackView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(title: Text("Stack")),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Center(
            child: Container(
              color: Colors.white,
              height: 400,
              width: 400,
              child: Image.network(
                "https://static.wikia.nocookie.net/mua/images/7/75/Img_0001_iron_man_mout.obj.png/revision/latest?cb=20200207025405",
              ),
            ),
          ),
          Positioned(
            top: 220,
            right: 0,
            child: IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
          ),
          Positioned(
            child: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
          ),
        ],
      ),
    );
  }
}
