import 'package:flutter/material.dart';

class WidgetsLesson extends StatelessWidget {
  WidgetsLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widgets"),
      ),
      body: TextExample(),
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
      style: TextStyle(fontSize: 64),
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

class ListExample extends StatelessWidget {
  ListExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text("These items", style: TextStyle(fontSize: 32)),
        Text("Are placed", style: TextStyle(fontSize: 32)),
        Text("One after the other...", style: TextStyle(fontSize: 32)),
        Text("And if we want to", style: TextStyle(fontSize: 32)),
        Text("We can scroll them", style: TextStyle(fontSize: 32)),
        Text("There are very many of them", style: TextStyle(fontSize: 32)),
        Text("Look at them go!", style: TextStyle(fontSize: 32)),
        Image.network("https://www.codesail.co.nz/walrus.webp"),
        Image.network("https://www.codesail.co.nz/cat.webp"),
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