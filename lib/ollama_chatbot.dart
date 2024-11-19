import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Chatbot extends StatefulWidget {
  Chatbot({super.key});

  @override
  State<Chatbot> createState() => _ChatbotState();
}

class _ChatbotState extends State<Chatbot> {
  bool loading = false;
  List<String> messages = [];

  void chat(String message) async {
    setState(() {
      loading = true;
    });

    final url = Uri.parse('http://localhost:11434/api/generate');
    final headers = {'Content-Type': 'application/json'};
    final body = json.encode({
      'model': 'tinyllama',
      'prompt': message,
      'stream': false,
    });

    final result = await http.post(url, headers: headers, body: body);
    final response = jsonDecode(result.body)['response'];

    setState(() {
      messages.add(response);
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nautical node - Chatbot"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("Hi I'm a chatbot. Type to see my responses..."),
            ),
            TextField(
              onSubmitted: (value) => chat(value),
            ),
            Opacity(
              opacity: loading ? 1 : 0,
              child: CircularProgressIndicator(),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Text(messages[index]),
                itemCount: messages.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
