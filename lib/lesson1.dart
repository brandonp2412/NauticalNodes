import 'package:flutter/material.dart';

class Lesson1 extends StatelessWidget {
  const Lesson1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lesson 1"),
      ),
      body: const CenterExample(),
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
class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("This gets placed right at the beginning.");
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

class BigTextExample extends StatelessWidget {
  const BigTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "This text is very big!",
      style: TextStyle(fontSize: 32),
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

class CenterExample extends StatelessWidget {
  const CenterExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      // Now the cat is in the center.
      child: Image.network("https://www.codesail.co.nz/cat.webp"),
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

class CenteredListExample extends StatelessWidget {
  const CenteredListExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        shrinkWrap: true,
        children: const [
          Center(child: Text("These items")),
          Center(child: Text("Are placed")),
          Center(child: Text("One after the other...")),
          Center(child: Text("And in the center!")),
        ],
      ),
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

class ListExample extends StatelessWidget {
  const ListExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Text("These items"),
        Text("Are placed"),
        Text("One after the other..."),
        Text("And if we want to"),
        Text("We can scroll them"),
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

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("Columns aren't scrollable"),
        Text("So use them for fixed lists"),
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