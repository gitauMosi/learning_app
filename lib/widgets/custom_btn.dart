
import 'package:flutter/material.dart';

import '../presentation/core/color.dart';

// ignore: must_be_immutable
class CustomBtn extends StatelessWidget {
  String label;
  Function() function;
  Color? color;
  CustomBtn({
    super.key,
    required this.label,
    required this.function,
    this.color = AppColor.primary,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
