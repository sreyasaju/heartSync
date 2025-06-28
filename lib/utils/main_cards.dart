import 'package:flutter/material.dart';
import 'dart:ui';

class MainCard extends StatefulWidget {
  final String cardName;
  final cardColor;

  const MainCard({
    required this.cardName,
    required this.cardColor,
    super.key,
  });

  @override
  State<MainCard> createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.only(left: 15.0),
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: widget.cardColor,
        ),
        child: Row(
          children: [
            Text(widget.cardName,
              style: TextStyle(
                fontSize:20,
                color: Colors.grey[100]!,
                fontWeight: FontWeight.bold
                
                
              ),
            ),
            const SizedBox(
              width: 10,
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}