import 'package:flutter/material.dart';

class FromAccounts extends StatelessWidget {
  const FromAccounts({
    super.key,
    required this.beniName,
    this.iconSize,
    this.iconColor,
    required this.icon,
    required this.accountNumber,
    required this.accountType,
    required this.fromToAccountText
  });

  final String beniName;
  final String accountNumber;
  final String accountType;
  final String fromToAccountText;

  final IconData? icon; // This is the flexible part!
  final double? iconSize;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
    
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // Centers content vertically
        children: [
          // 1. The Icon Layer
          Container(
            width: 85,
            height: 85,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF33ADB8),
            ),

            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(color: Color.fromARGB(255, 1, 146, 160)),
                  BoxShadow(
                    color: Color(0xFF33ADB8),
                    spreadRadius: -6.0,
                    blurRadius: 8.0,
                  ),
                ],
              ),
              child: ClipOval(
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Icon(icon, size: iconSize, color: iconColor),
                ),
              ),
            ),
          ),
          SizedBox(height: 8,),
          Row(children: [
            Text(fromToAccountText),
            Icon(Icons.arrow_drop_down_outlined)
          ],),
          SizedBox(height: 8,),
          Text(
            beniName.toUpperCase(),
            style: const TextStyle(fontSize: 14, 
            color: Color(0xFF33ADB8), 
            letterSpacing: -0.3
            ),
            overflow: TextOverflow.visible, // Prevents text overflow
          // Prevents text overflow
          ),

          const SizedBox(height: 8),
          Text(
            accountNumber,
            style: const TextStyle(fontSize: 14),
            overflow: TextOverflow.visible, // Prevents text overflow
          ),
          const SizedBox(height: 8),
          Text(
            accountType,
            style: const TextStyle(fontSize: 14, color: Color.fromARGB(255, 148, 148, 148)),
            overflow: TextOverflow.visible, // Prevents text overflow
          ),

        ],
      ),
    );
  }
}
