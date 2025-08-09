import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import 'package:heart_sync/components/side_menu.dart';
import 'package:heart_sync/components/nav_bar.dart';

class MedicationLogger extends StatefulWidget {
  const MedicationLogger({super.key});

  @override
  State<MedicationLogger> createState() => _MedicationLoggerState();
}



class _MedicationLoggerState extends State<MedicationLogger> {
  final _formKey = GlobalKey<FormState>();

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
                  openDialog();
                },
                child: const Icon(Icons.add, size: 48),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future openDialog() => showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text("Add Medication"),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: "Medication Name"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a medication name';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "Dosage"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a dosage';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "Frequency"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a frequency';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "Notes"),
              maxLines: 3,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      actions: [
         ElevatedButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
     
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Processing Data')),
              );
            }
          },
          child: const Text('Submit'),
          ),
      ]
    ),
  );
}