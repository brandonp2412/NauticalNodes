import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:animate_do/animate_do.dart';

class PackagesLesson extends StatelessWidget {
  PackagesLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson 5 - Packages"),
      ),
      // body: ShowAnimations(),
      // body: SpinKitSpinningLines(color: Colors.deepPurple),
    );
  }
}

// class ShowAnimations extends StatefulWidget {
//   ShowAnimations({super.key});

//   @override
//   State<ShowAnimations> createState() => _ShowAnimationsState();
// }

// class _ShowAnimationsState extends State<ShowAnimations> {
//   bool bouncing = true;

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           BounceInUp(
//             animate: bouncing,
//             child: Image.network("https://www.codesail.co.nz/walrus.webp"),
//           ),
//           TextButton(
//             onPressed: () {
//               setState(() {
//                 bouncing = !bouncing;
//               });
//             },
//             child: Text("Tap to bounce"),
//           ),
//         ],
//       ),
//     );
//   }
// }
