import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xFFE0E7FF), // Light purple background color
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Row(
        children: [
          Icon(Icons.search, color: Colors.black54),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search ...",
                hintStyle: TextStyle(color: Colors.black54),
                border: InputBorder.none,
              ),
            ),
          ),
          VerticalDivider(
            color: Colors.black54,
            thickness: 1,
            width: 20,
            indent: 10,
            endIndent: 10,
          ),
          Icon(Icons.tune, color: Colors.black54),
        ],
      ),
    );
  }
}
