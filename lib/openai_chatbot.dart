import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:nautical_nodes/loading_ellipsis.dart';

class OpenaiChatbot extends StatefulWidget {
  OpenaiChatbot({super.key});

  @override
  State<OpenaiChatbot> createState() => _OpenaiChatbotState();
}

class _OpenaiChatbotState extends State<OpenaiChatbot> {
  List<String> questions = [];
  List<String> answers = [];
  final textController = TextEditingController();
  final scrollController = ScrollController();
  String? openAiKey;

  @override
  void initState() {
    super.initState();
    setOpenAiKey();
  }

  void setOpenAiKey() async {
    await dotenv.load();
    openAiKey = dotenv.env['OPENAI_KEY'];
    if (openAiKey == null) throw "Set your OPENAI_KEY in .env";
  }

  Future<String> completions(String message) async {
    final url = Uri.parse('https://api.openai.com/v1/chat/completions');

    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $openAiKey',
    };

    var body = jsonEncode({
      'model': 'gpt-4o',
      'messages': [
        {'role': 'system', 'content': 'You are a pirate.'},
        {'role': 'user', 'content': message},
      ],
    });

    final response = await http.post(url, headers: headers, body: body);
    Map<String, dynamic> json = jsonDecode(response.body);
    return json['choices'][0]['message']['content'];
  }

  void ask(String question) async {
    textController.text = '';

    setState(() {
      questions.add(question);
    });

    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: Duration(seconds: 2),
      curve: Curves.easeOut,
    );

    final answer = await completions(question);
    final decodedAnswer = utf8.decode(answer.codeUnits);

    setState(() {
      answers.add(decodedAnswer);
    });

    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: Duration(seconds: 2),
      curve: Curves.easeOut,
    );

    if (!mounted) return;
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Nautical nodes",
          style: TextStyle(color: Colors.white),
        ),
        leading: Image.asset('assets/logo.png'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: scrollController,
              itemCount: questions.length,
              itemBuilder: (context, index) {
                final answer = answers.elementAtOrNull(index);

                return Column(
                  children: [
                    ListTile(
                      selected: true,
                      title: Text(questions[index]),
                    ),
                    ListTile(
                      selected: false,
                      title: answer != null ? Text(answer) : LoadingEllipsis(),
                    ),
                  ],
                );
              },
            ),
          ),
          if (questions.isNotEmpty)
            TextButton.icon(
              onPressed: () {
                setState(() {
                  questions = [];
                  answers = [];
                });
              },
              icon: Icon(Icons.delete),
              label: Text("Clear chat"),
            ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              controller: textController,
              textInputAction: TextInputAction.send,
              decoration: InputDecoration(
                labelText: "Enter a message...",
                suffixIcon: IconButton(
                  onPressed: () => ask(textController.text),
                  icon: Icon(Icons.send),
                ),
              ),
              onSubmitted: ask,
            ),
          ),
        ],
      ),
    );
  }
}
