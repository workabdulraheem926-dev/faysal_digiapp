import 'package:flutter/material.dart';

class MyAccounts extends StatelessWidget {
  const MyAccounts({super.key, required this.beniName, required this.image, required this.accountNumber});

  final String beniName;
   final String accountNumber;
  final ImageProvider image; // This is the flexible part!

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
              color: Colors.white,
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
                child: Image(image: image, fit: BoxFit.cover),
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
