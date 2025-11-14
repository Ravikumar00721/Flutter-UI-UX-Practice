import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class lt_sb_d_card extends StatefulWidget {
  const lt_sb_d_card({super.key});

  @override
  State<lt_sb_d_card> createState() => _lt_sb_d_cardState();
}

class _lt_sb_d_cardState extends State<lt_sb_d_card> {

  void customShowDialog(BuildContext context){
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context){
          return Dialog(
            elevation: 10,
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18)
            ),
            child: Container(
              padding: const EdgeInsets.all(20),
              width: 300,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Custom Dialog",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "This is an example dialog with custom design and rounded corners.",
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Close"),
                  )
                ],
              ),
            ),
          );
        });
  }

  void showSnackBar(BuildContext context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("This is a Custom SnackBar"),
        action: SnackBarAction(label: "Undo", onPressed: (){}),
        duration: Duration(seconds: 5),
        elevation: 8,
        backgroundColor: Colors.blue,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        dismissDirection: DismissDirection.horizontal,

      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListTile / Card / Dialog / SnackBar"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Card(
            elevation: 10,
            shadowColor: Colors.black,
            color: Colors.white,
            margin: const EdgeInsets.symmetric(vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: const BorderSide(color: Colors.blue, width: 1),
            ),
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.network(
                  "https://picsum.photos/300/150",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 150,
                ),

                ListTile(
                  leading: const CircleAvatar(child: Icon(Icons.person)),
                  title: const Text("Ravi Kumar"),
                  subtitle: const Text("Flutter Developer"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  dense: false,
                  enabled: true,
                  selected: true,
                  horizontalTitleGap: 12,
                  minLeadingWidth: 40,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  onTap: () {
                    showSnackBar(context);
                  },
                  onLongPress: () {
                    customShowDialog(context);
                  },
                  tileColor: Colors.grey.shade200,
                  selectedColor: Colors.red,
                ),

                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ElevatedButton(
                    onPressed: () => customShowDialog(context),
                    child: const Text("Open Dialog"),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
