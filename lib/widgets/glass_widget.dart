import 'dart:ui';
import 'package:flutter/material.dart';

class GlassContainer extends StatelessWidget {
  final double height;
  final double width;
  final double borderRadius;
  final double blur;
  final Widget? child;
  final Color borderColor;
  final Gradient gradient;

  const GlassContainer({
    super.key,
    this.height = 200,
    this.width = 300,
    this.borderRadius = 20,
    this.blur = 10,
    this.child,
    this.borderColor = Colors.white24,
    this.gradient = const LinearGradient(
      colors: [Colors.white, Colors.white10],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Stack(
        children: [
          // blur effect
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
            child: Container(),
          ),
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              gradient: gradient,
              border: Border.all(color: borderColor),
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            child: child,
          ),
        ],
      ),
    );
  }
}