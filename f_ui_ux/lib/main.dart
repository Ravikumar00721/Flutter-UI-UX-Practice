import 'package:f_ui_ux/features/layout_basics/container_example.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("UI/UX"),
          backgroundColor: Colors.teal,
        ),
        body: const Center(
          child: MyContainer(),
        ),
      ),
    );
  }
}