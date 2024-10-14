import 'package:flutter/material.dart';
import 'package:nautical_nodes/chatbot.dart';
import 'package:nautical_nodes/lesson1.dart';
import 'package:nautical_nodes/lesson2.dart';
import 'package:nautical_nodes/lesson3.dart';
import 'package:nautical_nodes/lesson4.dart';
import 'package:nautical_nodes/lesson5.dart';
import 'package:nautical_nodes/lesson6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nautical nodes',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Chatbot(),
    );
  }
}
