import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PSC extends StatelessWidget
{
  const PSC({super.key});

  @override
  Widget build(BuildContext conetxt)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Padding/SizedBox/Center"),
      ),
      body: Center(
        child: Padding(
            padding:EdgeInsets.all(20),
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(2, 4)
                )],
              ),
              child: Padding(padding: EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.person,size: 50,color: Colors.white,),
                  ),
                  SizedBox(height: 16,),
                  Text(
                    "Memeto Gaming",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8), // space between texts
                  Text(
                    "Flutter Developer",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Follow"),
                  ),
                ],
              ),
              ),
            ),
        ),
      ),
    );
  }
}