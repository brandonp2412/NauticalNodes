import 'package:flutter/material.dart';
import 'package:nautical_nodes/ollama_chatbot.dart';
import 'package:nautical_nodes/widgets_lesson.dart';
import 'package:nautical_nodes/actions_lesson.dart';
import 'package:nautical_nodes/state_lesson.dart';
import 'package:nautical_nodes/navigation_lesson.dart';
import 'package:nautical_nodes/packages_lesson.dart';
import 'package:nautical_nodes/internet_lesson.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nautical nodes',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: WidgetsLesson(),
    );
  }
}
