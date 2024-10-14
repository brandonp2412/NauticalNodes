import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// WARNING! Reading this is cheating.
class Chatbot extends StatefulWidget {
  const Chatbot({super.key});

  @override
  State<Chatbot> createState() => _ChatbotState();
}

class _ChatbotState extends State<Chatbot> {
  bool loading = false;
  List<String> responses = [];

  void chat(String message) async {
    final url = Uri.parse('http://localhost:11434/api/generate');
    final headers = {'Content-Type': 'application/json'};
    final body = json.encode({
      'model': 'tinyllama',
      'prompt': message,
      'stream': false,
    });

    final result = await http.post(url, headers: headers, body: body);
    final response = jsonDecode(result.body)['response'];
    responses.add(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nautical node - Chatbot"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text("Hi I'm a chatbot. Type to see my responses..."),
            ),
            TextField(
              onSubmitted: (value) => chat(value),
            ),
            Opacity(
              opacity: loading ? 1 : 0,
              child: const CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
