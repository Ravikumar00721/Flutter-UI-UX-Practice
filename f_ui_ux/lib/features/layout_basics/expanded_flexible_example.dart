import 'package:flutter/material.dart';

class ExpandedFlexibleDemo extends StatelessWidget {
  const ExpandedFlexibleDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded vs Flexible Demo"),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text(
                "1️⃣ Normal Row (no Expanded/Flexible):",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 100,
                color: Colors.grey[300],
                child: Row(
                  children: [
                    Container(width: 80, color: Colors.red),
                    Container(width: 120, color: Colors.blue),
                    Container(width: 60, color: Colors.green),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              const Text(
                "2️⃣ Row with Expanded (fills all available space):",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 100,
                color: Colors.grey[300],
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(color: Colors.red, child: Center(child: Text("1x")))),
                    Expanded(
                        flex: 2,
                        child: Container(color: Colors.blue, child: Center(child: Text("2x")))),
                    Expanded(
                        flex: 1,
                        child: Container(color: Colors.green, child: Center(child: Text("1x")))),
                  ],
                ),
              ),
              const SizedBox(height: 20),


              const Text(
                "3️⃣ Row with Flexible (can shrink or expand):",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 100,
                color: Colors.grey[300],
                child: Row(
                  children: [
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: Container(
                        color: Colors.orange,
                        width: 150,
                        child: const Center(child: Text("Flexible Tight")),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        color: Colors.purple,
                        width: 250,
                        child: const Center(child: Text("Flexible Tight")),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),


              const Text(
                "4️⃣ Column with Expanded & Flexible:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.grey[200],
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.teal,
                        child: const Center(child: Text("Expanded flex: 2")),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.indigo,
                        child: const Center(child: Text("Expanded flex: 1")),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        height: 1000,
                        color: Colors.amber,
                        child: const Center(child: Text("Flexible Tight")),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              const Text(
                "5️⃣ FlexFit.tight vs FlexFit.loose:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 120,
                width: double.infinity,
                color: Colors.grey[300],
                child: Row(
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: Container(
                        width: 100,
                        color: Colors.red,
                        // child: const Center(child: Text("Loose → natural size")),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Container(
                        width: 30,
                        color: Colors.blue,
                        // child: const Center(child: Text("Loose → natural size")),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Container(
                        width: 30,
                        color: Colors.green,
                        // child: const Center(child: Text("Loose → natural size")),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              const Text(
                "🔍 Observation:\n"
                    "• Tight = fills remaining space like Expanded.\n"
                    "• Loose = respects its width and shrinks if needed.",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
