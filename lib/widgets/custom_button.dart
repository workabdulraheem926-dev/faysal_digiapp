import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  const Btn({super.key, required this.text, this.icon, this.onTap});

  final String text;
  final IconData? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: const Color.fromARGB(103, 0, 0, 0),
      elevation: 2,
      borderRadius: BorderRadius.circular(16),

      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          // fixedSize: Size(25, 25),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 18),
          fixedSize: Size(110, 110),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          foregroundColor: const Color.fromARGB(255, 0, 0, 0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          // shadowColor: (Colors.amberAccent),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 48, color: const Color(0xFF33ADB8)),
            SizedBox(height: 8),
            Text(text, style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
