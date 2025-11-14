import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppFields extends StatefulWidget {
  const AppFields({super.key});

  @override
  State<AppFields> createState() => _AppFieldsState();
}

class _AppFieldsState extends State<AppFields> {

  final _nameController= TextEditingController();
  final formkey= GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text/TextField/TextFormField"),
      ),
      body: Padding(
          padding: EdgeInsets.all(16),
         child: SingleChildScrollView(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const Text(
                 "Welcome to Flutter!",
                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blue),
                 textAlign: TextAlign.center,
               ),
               const SizedBox(height: 25),
               TextField(
                 controller: _nameController,
                 keyboardType: TextInputType.text,
                 maxLength: 20,
                 onChanged: (value)=> print(value),
                 decoration: const InputDecoration(
                   labelText: "Enter Name",
                   hintText: "Ravi Kumar",
                   prefixIcon: Icon(Icons.person),
                   border: OutlineInputBorder()
                 ),
               ),
               SizedBox(height: 16,),
               Form(
                   key: formkey,
                   child: TextFormField(
                     keyboardType: TextInputType.emailAddress,
                     decoration: const InputDecoration(
                       labelText: "Email",
                       hintText: "example@gmail.com",
                       prefixIcon: Icon(Icons.email),
                       border: OutlineInputBorder(),
                     ),
                     validator: (value){
                       if(value==null || value.isEmpty)
                         {
                           return "Email is required";
                         }
                       if(!value.contains('@')){
                         return "Enter valid Email";
                       }
                       return null;
                     },
                   ),
               ),
               SizedBox(height: 16,),
               ElevatedButton(onPressed: (){
                 if(formkey.currentState!.validate()){
                   print("Validated Successfully");
                 }
               }, child: Text("Check"))
             ],
           ),
         ),
      ),
    );
  }
}
