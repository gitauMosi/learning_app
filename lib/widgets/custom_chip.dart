import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final String label;

  const CustomChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        // side: BorderSide(color: Colors.grey[300]),
      ),
      label: Text(label),
      backgroundColor: Colors.blue[50],
      labelStyle: const TextStyle(
        color: Colors.black,
        fontSize: 13.0,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
    );
  }
}
