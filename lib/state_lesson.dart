import 'package:flutter/material.dart';

class StateLesson extends StatefulWidget {
  StateLesson({super.key});

  @override
  State<StateLesson> createState() => _StateLessonState();
}

class _StateLessonState extends State<StateLesson> {
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
        title: Text("State lesson"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network("https://www.codesail.co.nz/walrus.webp"),
          Center(
            child: Text("You tapped $tapped times!"),
          ),
          TextButton(
            onPressed: increase,
            child: Text("Increase"),
          ),
        ],
      ),
    );
  }
}
