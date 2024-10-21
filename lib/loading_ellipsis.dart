import 'package:flutter/material.dart';

class LoadingEllipsis extends StatefulWidget {
  const LoadingEllipsis({super.key});

  @override
  createState() => _LoadingEllipsisState();
}

class _LoadingEllipsisState extends State<LoadingEllipsis>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _dotsAnimation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this)
          ..repeat();
    _dotsAnimation = StepTween(begin: 0, end: 3).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _dotsAnimation,
      builder: (context, child) {
        String dots = '.' * (_dotsAnimation.value + 1);
        return Text(
          dots,
          style: const TextStyle(fontSize: 24),
        );
      },
    );
  }
}
