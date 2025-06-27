import 'dart:ui';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.pink[900]!.withOpacity(0.5),
              borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  hoverColor: Colors.pink.withOpacity(0.3),
                  icon: const Icon(Icons.favorite_rounded),
                  color: Colors.pink[50],
                  iconSize: 36,
                  onPressed: () {},
                ),
                IconButton(
                  hoverColor: Colors.pink.withOpacity(0.3),
                  icon: const Icon(Icons.help_rounded),
                  color: Colors.pink[50],
                  iconSize: 36,
                  onPressed: () {},
                ),
                IconButton(
                  hoverColor: Colors.pink.withOpacity(0.3),
                  icon: const Icon(Icons.search),
                  color: Colors.pink[50],
                  iconSize: 36,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}