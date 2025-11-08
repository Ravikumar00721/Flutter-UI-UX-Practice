import 'package:flutter/material.dart';

class StackPos extends StatelessWidget {
  const StackPos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Positioned Aligned"),
      ),
      body: Stack(
        // fit: StackFit.loose, // makes Stack wrap its biggest child
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),

          Positioned(
            top: 100,
            left: (MediaQuery.of(context).size.width / 2) - 20,
            child: const Icon(
              Icons.star,
              color: Colors.yellow,
              size: 40,
            ),
          ),

          const Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Colors.white,
              child: Icon(Icons.person, size: 80, color: Colors.grey),
            ),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.green.shade600,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "Online",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
