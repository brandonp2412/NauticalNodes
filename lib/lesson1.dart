import 'package:flutter/material.dart';

class Lesson1 extends StatelessWidget {
  const Lesson1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lesson 1"),
      ),
      body: const Center(
        child: Text("Hello, world!"),
      ),
    );
  }
}
