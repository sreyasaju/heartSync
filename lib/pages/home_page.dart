import 'package:flutter/material.dart';


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
              SizedBox(height:25),

              Container(
                height:80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      color: Colors.blue[300],
                      child: Row(
                        children: [
                          Text("Heart Rate"),
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(20),
                      color: Colors.blue[300],
                      child: Row(
                        children: [
                          Text("Hello"),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            //search bar //
        
        
            //horizontal list
        
        
        
          ],),
      )
    );
  }
}