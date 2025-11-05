import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget
{
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row and Column"),
      ),
      body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hello", style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),),
          Text("World",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.location_city,size: 50,),
              Text("Row", style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),),
              Text("Bro",style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),)
            ],
          )
        ],
      ),
    );
  }
}