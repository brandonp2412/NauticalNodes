import 'package:flutter/material.dart';

class Lesson3 extends StatefulWidget {
  const Lesson3({super.key});

  @override
  State<Lesson3> createState() => _Lesson3State();
}

class _Lesson3State extends State<Lesson3> {
  int tapped = 0;

  void increase() {
    setState(() {
      tapped++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lesson 3 - State"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network("https://www.codesail.co.nz/dog2.jpg"),
          Center(
            child: Text("You tapped $tapped times!"),
          ),
          TextButton(
            onPressed: increase,
            child: const Text("Increase"),
          ),
        ],
      ),
    );
  }
}
