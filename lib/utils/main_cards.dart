import 'package:flutter/material.dart';

class MainCard extends StatefulWidget {
  const MainCard({super.key});

  @override
  State<MainCard> createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.only(left:30.0),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.blue[300],
        ),
        
        child: Row(
          children: [
            Text("Heart Rate"),
            SizedBox(
              width: 10,
              height: 80,
            ),
          ],
        ),
      ),    
    );
  }
}