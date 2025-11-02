import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.1, // in radians → ~5.7 degrees
      child: Container(
        width: 400,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/image/wb.jpg'),
          fit: BoxFit.cover),
          gradient: const LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: Offset(4, 4),
            ),
          ],
        ),
        alignment: Alignment.center,
        child: const Text(
          "WhiteBeard",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
