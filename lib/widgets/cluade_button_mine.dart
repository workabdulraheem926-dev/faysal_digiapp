import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final IconData? icon;
  final Color? borderColor;
  final double borderWidth;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final double fontSize;
  final double? width;
  final double? iconSize;

  final double? height;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = const Color(0xFF33ADB8),

    this.textColor = const Color.fromARGB(255, 255, 255, 255),
    this.fontSize = 16,
    this.icon,
    this.iconSize,
    this.borderColor,
    this.borderRadius = 8.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    this.borderWidth = 4,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: padding,
          elevation: 0,
          foregroundColor: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: borderColor != null
                ? BorderSide(color: borderColor!, width: borderWidth)
                : BorderSide.none,
          ),
        ),
        child: icon != null
            ? Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon!, size: iconSize,),
                  SizedBox(width: 12,),
                  Text(
                    text,
                    style: TextStyle(color: textColor, fontSize: fontSize),
                  ),
                ],
              )
            : Text(
              textAlign: TextAlign.center,
                text,
                style: TextStyle(color: textColor, fontSize: fontSize),

              ),
      ),
    );
  }
}

// Example usage:
// CustomButton(
//   text: 'Click Me',
//   onPressed: () {
//     print('Button pressed!');
//   },
//   backgroundColor: Colors.blue,
//   textColor: Colors.green, // default
//   icon: Icons.check,
//   borderColor: Colors.black,
//   borderWidth: 2,
// )
