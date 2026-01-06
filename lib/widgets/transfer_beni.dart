import "package:flutter/material.dart";

class Beni extends StatelessWidget {
  final String name;
  final String account;
  final IconData? icon;
  const Beni({super.key, required this.name, required this.account, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      //
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(18)),
            boxShadow: [
              BoxShadow(
                blurRadius: 1,
                spreadRadius: 0.4,
                offset: Offset(0, 0.3),
                color: const Color.fromARGB(66, 41, 41, 41),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 45,
                color: const Color.fromARGB(103, 100, 100, 100),
              ),
            ],
          ),
        ),
        SizedBox(height: 4),
        Text(
          name,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          account,
          style: TextStyle(
            color: const Color.fromARGB(255, 51, 51, 51),
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
