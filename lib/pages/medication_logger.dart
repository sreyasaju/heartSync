import "package:flutter/material.dart";
import 'package:heart_sync/components/side_menu.dart';


class MedicationLogger extends StatefulWidget {
  const MedicationLogger({super.key});

  @override
  State<MedicationLogger> createState() => _MedicationLoggerState();
}

class _MedicationLoggerState extends State<MedicationLogger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Medication"),
        ),
      extendBody: true,
      backgroundColor: Colors.grey[300],
      drawer: const SideMenu(),
    );
  }
}