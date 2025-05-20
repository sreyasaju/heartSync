import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      constraints: const BoxConstraints(maxWidth: 290),
      decoration: BoxDecoration(
        color: Colors.pink[900]!.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white.withValues(alpha: 0.3),
                    foregroundColor: Colors.white,
                    child: const Icon(Icons.person_rounded),
                  ),
                  const SizedBox(width: 12),
                  const Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sreya Saju",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                ],
              )
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right:24, top:30, bottom:5),
            child: Text(
            "BROWSE",
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.7),
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          )
        ),
        ],
      ),
    );
  }
}