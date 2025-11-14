import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllButtonApp extends StatelessWidget {
  const AllButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Buttons"), centerTitle: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => print("Elevated button pressed"),
              onLongPress: () => print("Long press"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shadowColor: Colors.black,
                elevation: 10,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 18,
                ),
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                minimumSize: const Size(200, 50),
                maximumSize: const Size(300, 60),
                fixedSize: const Size(250, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                animationDuration: const Duration(milliseconds: 300),
              ),
              child: Text("Elevated Button"),
            ),
            SizedBox(height: 16),
            OutlinedButton(
                onPressed: () => print("Outlined Button"),
                onLongPress: () => print("Outlined Button Long Press"),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.blue, width: 2),
                  foregroundColor: Colors.blue,
                  overlayColor: Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  textStyle: const TextStyle(fontSize: 17),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text("Outlined")
            ),
            const SizedBox(height: 20),

            TextButton(
              onPressed: () => print("Text Button Clicked"),
              onLongPress: () => print("Text Button Long Press"),
              style: TextButton.styleFrom(
                foregroundColor: Colors.green,
                padding: const EdgeInsets.all(14),
                textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              child: const Text("Text Button"),
            ),
            const SizedBox(height: 20),
            IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () => print("Icon Button"),
              onLongPress: () => print("Icon Button Long Press"),
              iconSize: 40,
              splashRadius: 30,
              tooltip: "Like",
              padding: const EdgeInsets.all(10),
              color: Colors.red,
              alignment: Alignment.center,
            ),
            ElevatedButton.icon(
              onPressed: () => print("Elevated Icon Button"),
              icon: const Icon(Icons.send,color: Colors.white,),
              label: const Text("Send"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.deepPurple,
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              ),
            ),
            const SizedBox(height: 20),

            OutlinedButton.icon(
              onPressed: () => print("Outlined Icon Button"),
              icon: const Icon(Icons.download),
              label: const Text("Download"),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.deepOrange, width: 2),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              onPressed: ()=> print("Mini FAB"),
            heroTag: "fab1",
            mini: true,
            backgroundColor: Colors.orange,
            tooltip: "Mini Add",
            elevation: 6,
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 15),
          FloatingActionButton.extended(
            heroTag: "fab2",
            onPressed: () => print("Extended FAB"),
            icon: const Icon(Icons.edit),
            label: const Text("Create"),
            elevation: 10,
            enableFeedback: true,
          ),
        ],
      ),
    );
  }
}
