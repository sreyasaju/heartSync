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
      appBar: AppBar(
        title: const Text('Meds'),
        backgroundColor: Colors.pink[900],
        foregroundColor: Colors.pink[50],
        elevation: 2,
      ),
      drawer: const SideMenu(),
      bottomNavigationBar: const NavBar(),
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 90, 
              height: 90,
              child: FloatingActionButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
                backgroundColor: Colors.pink[900],
                foregroundColor: Colors.pink[50],
                onPressed: () {
                    },
                child: const Icon(Icons.add, size: 48),
              ),
            ),
          ),
        ],
      ),
    );
  }
}