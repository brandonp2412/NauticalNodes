import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Lesson6 extends StatelessWidget {
  const Lesson6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lesson 6 - Internet")),
      body: const Center(
        child: RestRequests(),
      ),
    );
  }
}

class RestRequests extends StatefulWidget {
  const RestRequests({super.key});

  @override
  State<RestRequests> createState() => _RestRequestsState();
}

class _RestRequestsState extends State<RestRequests> {
  String? name;
  bool loading = false;

  void getName() async {
    setState(() {
      loading = true;
    });

    final url = Uri.https('randomuser.me', '/api/');
    final response = await http.get(url);
    Map<String, dynamic> json = jsonDecode(response.body);
    final first = json['results'][0]['name']['first'];
    final last = json['results'][0]['name']['last'];

    setState(() {
      name = "$first $last";
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Name: $name"),
        TextButton(onPressed: getName, child: const Text("Tap to get")),
        Opacity(
            opacity: loading ? 1 : 0, child: const CircularProgressIndicator()),
      ],
    );
  }
}

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//

class Lesson6Quiz1 extends StatefulWidget {
  const Lesson6Quiz1({super.key});

  @override
  State<Lesson6Quiz1> createState() => _Lesson6Quiz1State();
}

class _Lesson6Quiz1State extends State<Lesson6Quiz1> {
  @override
  Widget build(BuildContext context) {
    // Get + display a random users gender from https://randomuser.me/api/
    return Container();

    // (Optional) show an image of this person as well.
  }
}
