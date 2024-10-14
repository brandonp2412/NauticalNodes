// import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:animate_do/animate_do.dart';

class Lesson5 extends StatelessWidget {
  const Lesson5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lesson 5 - Packages"),
      ),
      // body: const ShowAnimations(),
      // body: const SpinKitSpinningLines(color: Colors.deepPurple),
      // body: ShimmyImage(),
    );
  }
}

// class ShowAnimations extends StatefulWidget {
//   const ShowAnimations({super.key});

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
//             child: Image.network("https://www.codesail.co.nz/walrus.jpg"),
//           ),
//           TextButton(
//             onPressed: () {
//               setState(() {
//                 bouncing = !bouncing;
//               });
//             },
//             child: const Text("Tap to bounce"),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ShimmyImage extends StatelessWidget {
//   const ShimmyImage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: FancyShimmerImage(
//         imageUrl: "https://www.codesail.co.nz/camel.jpg",
//         boxFit: BoxFit.cover,
//         shimmerDuration: const Duration(seconds: 5),
//       ),
//     );
//   }
// }
