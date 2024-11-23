import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class OllamaChatbot extends StatefulWidget {
  OllamaChatbot({super.key});

  @override
  State<OllamaChatbot> createState() => _OllamaChatbotState();
}

class _OllamaChatbotState extends State<OllamaChatbot> {
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
      messages.insert(0, response);
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nautical node - Chatbot"),
        leading: Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset('assets/ollama.png'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Text(messages[index]),
                itemCount: messages.length,
                reverse: true,
              ),
            ),
            Opacity(
              opacity: loading ? 1 : 0,
              child: CircularProgressIndicator(),
            ),
            TextField(
              onSubmitted: (value) => chat(value),
              decoration: InputDecoration(
                labelText: 'Type to chat...',
                suffixIcon: Icon(Icons.send),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
