import 'package:flutter/material.dart';
import 'package:heart_sync/pages/home_page.dart';
import 'package:heart_sync/pages/medication_logger.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.pink[900]!.withValues(alpha: 0.8),
          borderRadius: const BorderRadius.all(Radius.circular(24)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              hoverColor: Colors.pink,
              icon: const Icon(Icons.home_rounded),
              color: Colors.pink[50],
              iconSize: 36,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            IconButton(
              hoverColor: Colors.pink,
              icon: const Icon(Icons.favorite_rounded),
              color: Colors.pink[50],
              iconSize: 36,
              onPressed: () {},
            ),
            IconButton(
              hoverColor: Colors.pink,
              icon: const Icon(Icons.help_rounded),
              color: Colors.pink[50],
              iconSize: 36,
              onPressed: () {},
            ),
            IconButton(
              hoverColor: Colors.pink,
              icon: const Icon(Icons.search),
              color: Colors.pink[50],
              iconSize: 36,
              onPressed: () { 
                Navigator.push(context, MaterialPageRoute(builder: (context) => MedicationLogger()));
                },
            ),
          ],
        ),
      ),
    );
  }
}