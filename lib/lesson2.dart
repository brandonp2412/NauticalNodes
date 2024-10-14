import 'package:flutter/material.dart';

class Lesson2 extends StatelessWidget {
  const Lesson2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lesson 2 - Actions"),
      ),
      body: const Center(
        child: Lesson2Quiz1(),
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
  const BasicButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showToast(context, "Hello!");
      },
      child: const Text("Say hi"),
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
  const SplittingOutActions({super.key});

  void sayHello(BuildContext context) {
    showToast(context, "Why hello there!");
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => sayHello(context),
      child: const Text("Say hi"),
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

class Lesson2Quiz1 extends StatelessWidget {
  const Lesson2Quiz1({super.key});

  void sayHello(BuildContext context) {
    const name = 'Mr. beast';
    showToast(context, 'Hi my name is $name');
  }

  @override
  Widget build(BuildContext context) {
    // What is shown on tap?
    return TextButton(
      onPressed: () => sayHello(context),
      child: const Text("Do greeting"),
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

class Lesson2Quiz2 extends StatelessWidget {
  const Lesson2Quiz2({super.key});

  @override
  Widget build(BuildContext context) {
    // Make this button say your name.
    return TextButton(
      onPressed: () {},
      child: const Text("Say my name"),
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

class Lesson2Quiz3 extends StatelessWidget {
  const Lesson2Quiz3({super.key});

  void sayHello(BuildContext context) {
    const name = 'Mr. beast';

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
      child: const Text("Say my name"),
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
