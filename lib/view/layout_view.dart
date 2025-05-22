import 'package:flutter/material.dart';

class ViewLayout extends StatefulWidget {
  const ViewLayout({super.key});

  @override
  State<ViewLayout> createState() => _ViewLayoutState();
}

class _ViewLayoutState extends State<ViewLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout View Task"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IntrinsicHeight(
            child: IntrinsicWidth(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.call),
                        RichText(
                          text: TextSpan(
                            text: "Call",
                            style: const TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      children: [
                        Icon(Icons.near_me, color: Colors.green),
                        RichText(
                          text: TextSpan(
                            text: "Route",
                            style: const TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      children: [
                        Icon(Icons.share, color: Colors.green),
                        RichText(
                          text: TextSpan(
                            text: "Share",
                            style: const TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
