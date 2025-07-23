import "package:flutter/material.dart";
import 'package:heart_sync/components/side_menu.dart';
import 'package:heart_sync/components/nav_bar.dart';

class MedicationLogger extends StatefulWidget {
  const MedicationLogger({super.key});

  @override
  State<MedicationLogger> createState() => _MedicationLoggerState();
}

class _MedicationLoggerState extends State<MedicationLogger> {
  final _formGlobalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      drawer: const SideMenu(),
      bottomNavigationBar: const NavBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink[900],
        foregroundColor: Colors.pink[50],
        onPressed: () {
          // Respond to button press
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[
              // your other widgets here
            ],
          ),
        ),
      ),
    );
  }
}