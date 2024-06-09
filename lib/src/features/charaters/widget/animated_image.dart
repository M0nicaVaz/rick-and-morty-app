import 'dart:math' as math;

import 'package:flutter/material.dart';

class AnimatedImage extends StatefulWidget {
  const AnimatedImage({super.key});

  @override
  State<AnimatedImage> createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImage>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );

    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (BuildContext context, Widget? child) {
        return Transform.scale(
          scale: _controller.value,
          child: child,
        );
      },
      animation: _controller,
      child: AnimatedBuilder(
        animation: _controller,
        child: SizedBox(
          width: 445.0,
          child: Center(
            child: Image.network(
              "https://rick-and-morty-guide.vercel.app/_next/image?url=/_next/static/media/hero.053d2bb1.png&w=1080&q=75",
              width: 440,
            ),
          ),
        ),
        builder: (BuildContext context, Widget? child) {
          return Transform.rotate(
            angle: _controller.value * 4.0 * math.pi,
            child: child,
          );
        },
      ),
    );
  }
}
