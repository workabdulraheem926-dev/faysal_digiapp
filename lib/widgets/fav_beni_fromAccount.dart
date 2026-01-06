import 'package:flutter/material.dart';

class FromAccounts extends StatelessWidget {
  const FromAccounts({super.key, required this.beniName, this.iconSize, required this.icon, required this.accountNumber});

  final String beniName;
   final String accountNumber;
  final IconData? icon; // This is the flexible part!
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(130, 150),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // Centers content vertically
        children: [
          // 1. The Image Layer
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  Colors.transparent,
                  Colors.black.withValues(alpha: 0.15),
                  
                ],
                stops: [0.78, 1],
              ),
            ),
          
              child: ClipOval(child: Padding(
                padding: const EdgeInsets.all(6), 
                child: Icon(icon, size: iconSize,),
              ))
              ,
            
          ),

          const SizedBox(height: 8),
          Text(
            beniName,
            style: const TextStyle(fontSize: 10),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis, // Prevents text overflow
          ),const SizedBox(height: 8),
          Text(
            accountNumber,
            style: const TextStyle(fontSize: 10),
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible, // Prevents text overflow
          ),
        ],
      ),
    );
  }
}
