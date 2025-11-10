import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class List_View extends StatelessWidget
{
  List_View({super.key});

  final List<String> names = [
    "Abhinav", "Ravi", "Tanya", "Arun", "Prateek","Abhinav", "Ravi", "Tanya", "Arun", "Prateek"
  ];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
                itemCount: names.length,
                itemBuilder: (context,index){
                  return ListTile(
                    leading: CircleAvatar(child: Text(names[index][0]),),
                    title: Text(names[index]),
                    subtitle: const Text("Active Now"),
                  );
                }),
          ),
          SizedBox(height: 16,child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black
            ),
          ),),
          Expanded(child: ListView(
            children: List.generate(10, (index)=>Container(
              height: 60,
              margin: EdgeInsets.all(5),
              color: Colors.red[(index+1)*100],
              child: Center(
                child: Text("Box ${index+1}",
                style: TextStyle(color: Colors.white),
                ),
              ),
            )),
          ) ),
          Expanded(
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                itemCount: names.length,
                itemBuilder: (context,index){
                  return ListTile(
                    leading: CircleAvatar(child: Text(names[index][0]),),
                    title: Text(names[index]),
                    subtitle: const Text("Active Now"),
                  );
                },
              separatorBuilder: (context,index)=> const Divider(height: 8,),
                ),
          )
        ],
      ),
    );
  }
}