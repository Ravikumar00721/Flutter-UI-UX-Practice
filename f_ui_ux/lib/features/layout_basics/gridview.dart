import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ExampleGridView extends StatefulWidget {
  const ExampleGridView({super.key});

  @override
  State<ExampleGridView> createState() => _ExampleGridViewState();
}

class _ExampleGridViewState extends State<ExampleGridView> {
  List<dynamic> products = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    final response = await http.get(
      Uri.parse("https://dummyjson.com/products?limit=20"),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        products = data['products'];
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Staggered GridView")),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
        padding: const EdgeInsets.all(12.0),
          child: MasonryGridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                      child: Image.network(
                        product['thumbnail'],
                        height: 120 + (index % 4) * 30,   // dynamic height
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        product['title'],
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              );
            },
          )
      ),
    );
  }
}




// import 'dart:convert';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// class ExampleGridView extends StatefulWidget {
//   ExampleGridView({super.key});
//
//   @override
//   State<ExampleGridView> createState() => _ExampleGridViewState();
// }
//
// class _ExampleGridViewState extends State<ExampleGridView> {
//   // final List<String> fruits = [
//   //   "Apple",
//   //   "Banana",
//   //   "Mango",
//   //   "Orange",
//   //   "Grapes",
//   //   "Pineapple",
//   //   "Cherry",
//   //   "Papaya"
//   // ];
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     fetchProducts();
//   }
//
//   List<dynamic> products = [];
//   bool isLoading = true;
//
//   Future<void> fetchProducts() async {
//     final response = await http.get(
//       Uri.parse("https://dummyjson.com/products?limit=20"),
//     );
//
//     print("Status Code: ${response.statusCode}");
//
//     if (response.statusCode == 200) {
//       final data = json.decode(response.body);
//       setState(() {
//         products = data['products'];
//         isLoading = false;
//       });
//     } else {
//       throw Exception("Failed to Load Products");
//     }
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("GridView")),
//       body: isLoading
//           ? const Center(child: CircularProgressIndicator())
//           : Padding(
//               padding: EdgeInsets.all(16),
//               child: GridView.builder(
//                 itemCount: products.length,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   mainAxisSpacing: 10,
//                   crossAxisSpacing: 10,
//                   childAspectRatio: 0.70,
//                 ),
//                 itemBuilder: (context,index){
//                   final product = products[index];
//                   return Container(
//                     decoration: BoxDecoration(
//                       color: Colors.grey,
//                       borderRadius: BorderRadius.circular(12)
//                     ),
//                     child: Column(
//                       children: [
//                         Expanded(child: ClipRRect(
//                           borderRadius: const BorderRadius.vertical(
//                             top: Radius.circular(12)
//                           ),
//                           child: Image.network(    product['thumbnail'],
//                             width: double.infinity,
//                             fit: BoxFit.cover,),
//                         )),
//                         Padding(
//                           padding: const EdgeInsets.all(6.0),
//                           child: Text(
//                             product['title'],
//                             maxLines: 2,
//                             overflow: TextOverflow.ellipsis,
//                             style: const TextStyle(fontSize: 12),
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//       // body: Padding(
//       //     padding: EdgeInsets.all(16),
//       //     child: GridView.builder(
//       //     itemCount: fruits.length,
//       //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//       //         crossAxisCount: 2,
//       //         crossAxisSpacing: 10,
//       //         mainAxisSpacing: 10
//       //     ),
//       //     itemBuilder: (context,index){
//       //       return Container(
//       //         decoration:  BoxDecoration(
//       //           color: Colors.teal,
//       //           borderRadius: BorderRadius.circular(15),
//       //         ),
//       //         child: Center(
//       //           child: Text(
//       //             fruits[index],
//       //             style: const TextStyle(
//       //               fontSize: 18,
//       //               color: Colors.white,
//       //               fontWeight: FontWeight.bold,
//       //             ),
//       //           ),
//       //         ),
//       //       );
//       //     }),
//       // )
//     );
//   }
// }
//
// //
// // class ExampleGridView extends StatelessWidget {
// //   const ExampleGridView({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("GridView"),
// //       ),
// //       body: GridView.count(
// //           crossAxisCount: 2,
// //           crossAxisSpacing: 10,
// //         mainAxisSpacing: 10,
// //         padding: EdgeInsets.all(16),
// //         children: List.generate(10, (index){
// //           return Container(
// //             decoration: BoxDecoration(
// //               color: Colors.blueAccent,
// //               borderRadius: BorderRadius.circular(15),
// //             ),
// //             child: Center(
// //               child: Text(
// //                 "Item $index",
// //                 style: TextStyle(color: Colors.white, fontSize: 20),
// //               ),
// //             ),
// //           );
// //         }),
// //       ),
// //     );
// //   }
// // }
