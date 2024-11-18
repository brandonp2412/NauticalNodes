import 'package:flutter/material.dart';

class Lesson4 extends StatelessWidget {
  const Lesson4({super.key});

  void goToQuiz1(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const Lesson4Quiz1()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Navigation")),
      body: Center(
        child: TextButton(
          onPressed: () => goToQuiz1(context),
          child: const Text("Tap to see quiz #1"),
        ),
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
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//

class Lesson4Quiz1 extends StatelessWidget {
  const Lesson4Quiz1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Quiz 1")),
      body: const Center(child: Text("How do we navigate to quiz 2?")),
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
//
//
//
//
//
//
//
//
//

class Lesson4Quiz2 extends StatelessWidget {
  const Lesson4Quiz2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Quiz 2")),
      body: const Center(
        child: Column(
          children: [
            Text("Welcome and congrats! You figured it out you sly dog..."),
            Text("Now you're going to have to communicate with the next quiz"),
            Text("Pass it an argument. Get one back."),
          ],
        ),
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
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//

class Lesson4Quiz3 extends StatelessWidget {
  final String name;

  const Lesson4Quiz3({super.key, required this.name});

  void goBack(BuildContext context) {
    Navigator.pop(
      context,
      "Arr, it’s time to drop anchor and sail off the edge of the digital map. Fair winds and following seas to ye! ",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ahoy $name"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Ye be far away from land. Best be on yer way..."),
            TextButton(
              onPressed: () => goBack(context),
              child: const Text("Off i go"),
            ),
          ],
        ),
      ),
    );
  }
}
