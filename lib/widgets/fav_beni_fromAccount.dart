import 'package:flutter/material.dart';

class FromAccounts extends StatelessWidget {
  const FromAccounts({
    super.key,
    required this.beniName,
    this.iconSize,
    this.iconColor,
    this.fontWeight,

    required this.icon,
    required this.accountNumber,
    required this.accountType,
    required this.fromToAccountText,
  });

  final String beniName;
  final String accountNumber;
  final String accountType;
  final String fromToAccountText;
  final FontWeight? fontWeight;

  final IconData? icon; // This is the flexible part!
  final double? iconSize;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 0),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Centers content vertically
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(fromToAccountText),
                Icon(Icons.keyboard_arrow_down_sharp),
              ],
            ),
            SizedBox(height: 8),
            // 1. The Icon Layer
            Container(
              width: 70,
              height: 70,
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
            SizedBox(height: 8),

            SizedBox(height: 4),
            Text(
              beniName.toUpperCase(),
              style:  TextStyle(
                fontWeight: fontWeight,
                
                color: Color(0xFF33ADB8),
                letterSpacing: -0.3,
              ),
              overflow: TextOverflow.visible, // Prevents text overflow
              // Prevents text overflow
            ),

            const SizedBox(height: 2),
            SizedBox(
              width: 110,
              child: Text(
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,

                accountNumber,
                style: const TextStyle(fontSize: 12),
                overflow: TextOverflow.ellipsis,
                // Prevents text overflow
              ),
            ),

            const SizedBox(height: 2),
            Text(
              accountType,
              style: const TextStyle(
                fontSize: 12,
                color: Color.fromARGB(255, 148, 148, 148),
              ),
              overflow: TextOverflow.visible, // Prevents text overflow
            ),
          ],
        ),
      ),
    );
  }
}
