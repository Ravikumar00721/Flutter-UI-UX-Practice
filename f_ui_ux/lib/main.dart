import 'package:f_ui_ux/features/layout_basics/container_example.dart';
import 'package:f_ui_ux/features/layout_basics/padding.dart';
import 'package:f_ui_ux/features/layout_basics/row_column_example.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'features/layout_basics/expanded_flexible_example.dart';

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
      home: ExpandedFlexibleDemo()
    );
  }
}