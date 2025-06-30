import 'package:flutter/material.dart';
import 'package:heart_sync/utils/main_cards.dart';
import 'package:heart_sync/components/nav_bar.dart';
import 'package:heart_sync/components/side_menu.dart';
import 'dart:ui' as ui;


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.grey[300],
      drawer: const SideMenu(),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: CoralCurveClipper(),
                    child: Image.asset(
                      "assets/bg_coral.png",
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              // app bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello, Sreya",
                          style: TextStyle(
                            fontSize: 35,
                            fontFamily: "BalooChettan2",
                            fontWeight: FontWeight.w800,
                            color: Colors.blueGrey[800],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.pink[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(Icons.person),
                    ),
                  ],
                ),
              ),

            // Heading above cards
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
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

            const SizedBox(height: 10),

            // cards
            SizedBox(
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

            const SizedBox(height: 40),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
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
              padding: const EdgeInsets.all(24),
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
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}

class CoralCurveClipper extends CustomClipper<Path> {
  @override
    Path getClip(ui.Size size) {
    Path path = ui.Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
      size.width / 2, size.height,
      size.width, size.height - 80,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}