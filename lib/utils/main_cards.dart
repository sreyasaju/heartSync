import 'package:flutter/material.dart';

class MainCard extends StatefulWidget {
  final String cardName;
  final cardColor;
  final borderColor;

  const MainCard({
    required this.cardName,
    required this.cardColor,
    required this.borderColor,
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
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width:7, color: widget.borderColor),
          color: widget.cardColor,
        ),
        child: Row(
          children: [
            Text(widget.cardName,
              style: TextStyle(
                fontSize:20,
                color: Colors.grey[100]!,
                fontWeight: FontWeight.bold,
                fontFamily: "BalooChettan2",
                
              ),
            ),
            const SizedBox(
              width: 15,
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}