import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.pink[900]!.withOpacity(0.8),
            borderRadius: const BorderRadius.all(Radius.circular(24)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround, // 👈 evenly space icons
            children: [
              IconButton(
                hoverColor: Colors.orange.withOpacity(0.3),
                icon: const Icon(Icons.favorite_rounded),
                color: Colors.pink[50],
                iconSize: 36,
                onPressed: () {},
              ),
              IconButton(
                hoverColor: Colors.orange.withOpacity(0.3),
                icon: const Icon(Icons.help_rounded),
                color: Colors.pink[50],
                iconSize: 36,
                onPressed: () {},
              ),
              IconButton(
                hoverColor: Colors.orange.withOpacity(0.3),
                icon: const Icon(Icons.search),
                color: Colors.pink[50],
                iconSize: 36,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}