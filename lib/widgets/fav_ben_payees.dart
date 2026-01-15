import 'package:flutter/material.dart';

class MyPayee extends StatelessWidget {
  const MyPayee({
    super.key,
    this.onTap,
    required this.beniBank,
    required this.beniAccount,
    required this.image,

  });

  final String beniBank;
  final String beniAccount;
  final ImageProvider image; // This is the flexible part!
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

            child: ClipOval(
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Image(image: image, fit: BoxFit.cover),
              ),
            ),
          ),

          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  beniBank,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 6),

                Text(beniAccount, style: const TextStyle(fontSize: 12)),
              ],
            ),
          ),

          Icon(Icons.more_vert_rounded, size: 28),
        ],
      ),
    );
  }
}
