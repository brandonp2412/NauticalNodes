import 'package:flutter/material.dart';

class ActionsLesson extends StatelessWidget {
  ActionsLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Actions lesson"),
      ),
      body: Center(
        child: BasicButton(),
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

class BasicButton extends StatelessWidget {
  BasicButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showToast(context, "Hello!");
      },
      child: Text("Say hi"),
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

class SplittingOutActions extends StatelessWidget {
  SplittingOutActions({super.key});

  void sayHello(BuildContext context) {
    showToast(context, "Hello from inside a function!");
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => sayHello(context),
      child: Text("Say hi (split)"),
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

class TapQuiz extends StatelessWidget {
  TapQuiz({super.key});

  void sayHello(BuildContext context) {
    var name = 'Mr. beast';
    showToast(context, 'Hi my name is $name');
  }

  @override
  Widget build(BuildContext context) {
    // What is shown on tap?
    return TextButton(
      onPressed: () => sayHello(context),
      child: Text("Tap Quiz 1"),
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

class NameQuiz extends StatelessWidget {
  NameQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    // Make this button say your name.
    return TextButton(
      onPressed: () {},
      child: Text("Name quiz #1"),
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

class BrokenQuiz extends StatelessWidget {
  BrokenQuiz({super.key});

  void sayHello(BuildContext context) {
    var name = 'Mr. beast';

    if (name == 'Brandon') {
      showToast(context, "Hello sir.");
    }
  }

  @override
  Widget build(BuildContext context) {
    // This button isn't saying anything.
    // Fix it.
    return TextButton(
      onPressed: () => sayHello(context),
      child: Text("Say my name"),
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

/// Displays a small message at the bottom of the screen.
///
/// Example:
/// ```dart
/// showSnackbar(context, 'Hello World');
/// ```
void showToast(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}
