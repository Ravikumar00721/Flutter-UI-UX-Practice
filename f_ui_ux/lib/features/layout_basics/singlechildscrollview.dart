import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleChild_ScrollView extends StatelessWidget
{
  const SingleChild_ScrollView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Child Scroll View"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue
                    ),
                  ),
                  Container(
                    width: 100,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.red
                    ),
                  ),
                  Container(
                    width: 100,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.blue
                    ),
                  ),
                  Container(
                    width: 100,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.red
                    ),
                  ),
                  Container(
                    width: 100,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.blue
                    ),
                  ),
                  Container(
                    width: 100,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.red
                    ),
                  )
                ],
              ),

            ),
          ),
          SizedBox(
            height: 500,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              reverse: true,
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    color: Colors.blueAccent,
                    child: const Center(
                      child: Text("Header Image", style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text("About Me", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  const Text(
                    "I am a Flutter developer passionate about building mobile apps. "
                        "I love UI design, animations, and learning about architecture patterns.",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 150,
                    color: Colors.teal,
                    child: const Center(
                      child: Text("More Content Here", style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 150,
                    color: Colors.orange,
                    child: const Center(
                      child: Text("Footer Section", style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 150,
                    color: Colors.teal,
                    child: const Center(
                      child: Text("More Content Here", style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 150,
                    color: Colors.orange,
                    child: const Center(
                      child: Text("Footer Section", style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 150,
                    color: Colors.teal,
                    child: const Center(
                      child: Text("More Content Here", style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 150,
                    color: Colors.orange,
                    child: const Center(
                      child: Text("Footer Section", style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 150,
                    color: Colors.teal,
                    child: const Center(
                      child: Text("More Content Here", style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 150,
                    color: Colors.orange,
                    child: const Center(
                      child: Text("Footer Section", style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}