import 'package:flutter/material.dart';

class Liststyleview extends StatefulWidget {
  const Liststyleview({super.key});

  @override
  State<Liststyleview> createState() => _ListstyleviewState();
}

class _ListstyleviewState extends State<Liststyleview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Two Numbers")),
      body: ListTile(
        leading: const Icon(Icons.accessible_forward),
        title: const Text("Aakash Shahi"),
        subtitle: const Text("Kathmandu, Nayapati"),
        trailing: Wrap(
          spacing: 4,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
          ],
        ),
      ),
    );
  }
}
