import 'package:flutter/material.dart';
import 'package:heart_sync/utils/main_cards.dart';
import 'package:heart_sync/components/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            // app bar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Sreya",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.pink[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.person),
                  ),
                ],
              ),
            ),

            // Heading above cards
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Todays' Vitals",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.pink[300],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            // cards
            Container(
              height: 170,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MainCard(
                    cardName: 'Heart Rate',
                    cardColor: Colors.pink[400]!,

                  ),
                  MainCard(
                    cardName: 'Blood Sugar',
                    cardColor: Colors.teal[500]!,
                  ),
                  MainCard(
                    cardName: 'Blah Blah',
                    cardColor: Colors.deepOrange[400]!,
                  ),
                  MainCard(
                    cardName: 'Blah Blah',
                    cardColor: Colors.lightBlue[500]!,
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),
            
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Progress Timeline",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.pink[300],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            
            Container(
              height: 200,
              padding: const EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[200],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBar()
    );
  }
}