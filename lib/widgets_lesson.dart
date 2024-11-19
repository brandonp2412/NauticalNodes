import 'package:flutter/material.dart';

class WidgetsLesson extends StatelessWidget {
  WidgetsLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widgets"),
      ),
      body: CenterExample(),
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
  TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("This gets placed right at the beginning.");
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
  BigTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
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
  CenterExample({super.key});

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
  CenteredListExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        shrinkWrap: true,
        children: [
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
  ListExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
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
  ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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