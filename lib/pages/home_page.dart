import 'package:flutter/material.dart';
import 'package:heart_sync/utils/main_cards.dart';


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
                padding: EdgeInsets.symmetric(horizontal:35.0, vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Sreya",
                        style: TextStyle(
                          fontSize:25,
                          fontWeight: FontWeight.bold
                        ),
                      ), 
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.pink[200],
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Icon(Icons.person),
                  ),
                ],
               ),
              ),
        
              // cards 
              Container(
                height:150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                     MainCard(
                      cardName: 'Heart Rate',
                      cardColor: Colors.pink[400]!,
                     ),
                     MainCard(
                      cardName: 'Blood Sugar',
                      cardColor: Colors.teal[400]!,
                     ),
                     MainCard(
                      cardName: 'Blah Blah',
                      cardColor: Colors.orange[400]!,
                     ),

                     MainCard(
                      cardName: 'Blah Blah',
                      cardColor: Colors.lightBlue[400]!,
                     ),
                  ],
                ),
              ),

            //search bar //
        
        
            //horizontal list
        
        
        
          ],),
      )
    );
  }
}