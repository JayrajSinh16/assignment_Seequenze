import 'package:flutter/material.dart';

class CupFillingButton extends StatelessWidget {
  final String size;
  final bool isSelected;
  final VoidCallback onPressed;

  const CupFillingButton(
      {super.key,
      required this.size,
      required this.isSelected,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? Colors.green : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Text(
        size,
        style: TextStyle(color: isSelected ? Colors.white : Colors.black),
      ),
    );
  }
}
