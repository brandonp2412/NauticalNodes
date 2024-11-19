import 'package:flutter/material.dart';

class NavigationLesson extends StatelessWidget {
  NavigationLesson({super.key});

  void goToQuiz1(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => NavigationQuiz()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation")),
      body: Center(
        child: TextButton(
          onPressed: () => goToQuiz1(context),
          child: Text("Tap to see quiz #1"),
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

class NavigationQuiz extends StatelessWidget {
  NavigationQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation quiz")),
      body: Center(child: Text("How do we navigate to quiz 2?")),
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

class Quiz2 extends StatelessWidget {
  Quiz2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Quiz 2")),
      body: Center(
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

class Quiz3 extends StatelessWidget {
  final String name;

  Quiz3({super.key, required this.name});

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
            Text("Ye be far away from land. Best be on yer way..."),
            TextButton(
              onPressed: () => goBack(context),
              child: Text("Off i go"),
            ),
          ],
        ),
      ),
    );
  }
}
