import 'dart:math' as math;

import 'package:flutter/material.dart';

class AnimatedImage extends StatefulWidget {
  const AnimatedImage({super.key});

  @override
  State<AnimatedImage> createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImage>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 600),
    vsync: this,
  )..forward();
  late final AnimationController _scaleController = AnimationController(
    duration: const Duration(milliseconds: 600),
    vsync: this,
  )..forward();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (BuildContext context, Widget? child) {
        return Transform.scale(
          scale: _scaleController.value,
          child: child,
        );
      },
      animation: _scaleController,
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
