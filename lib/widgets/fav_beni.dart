import 'package:flutter/material.dart';

class FavBeni extends StatelessWidget {
  const FavBeni({super.key, required this.beniName,this.onTap, required this.image});

  final String beniName;
  final ImageProvider image; 
  final VoidCallback? onTap; 

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(130, 130),
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
            style: const TextStyle(fontSize: 13),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis, // Prevents text overflow
          ),
        ],
      ),
    );
  }
}
