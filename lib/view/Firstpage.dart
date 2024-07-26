// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:riverpod_supabase_use_javascript/core/constants.dart';

// class Firstpage extends ConsumerWidget {
//   const Firstpage({super.key});

//   @override
//   State<Firstpage> createState() => _FirstpageState();
  
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
  
//   }
// }

// class _FirstpageState extends State<Firstpage> {
//   final stream = supabase.from("table_users").stream(primaryKey: ["id"]);
//   TextEditingController name = TextEditingController();
//   TextEditingController age = TextEditingController();
//   TextEditingController gender = TextEditingController();
//   @override
//   Widget build( context) {
//     return Scaffold(
//       body: StreamBuilder(
//         stream: stream,
//         builder: (context, snapshot) {
//           if (!snapshot.hasData) {
//             return Column(
//               children: [
//                 CircularProgressIndicator(),
//                 const Spacer(),
//                 TextField(
//                   controller: name,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                 ),
//                 TextField(
//                   controller: age,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                 ),
//                 TextField(
//                   controller: gender,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () async {
//                     await supabase.from("table_users").insert({
//                       "name": name.text,
//                       "age": int.parse(age.text),
//                       "gender": gender.text
//                     }).select();
//                   },
//                   child: Container(
//                     width: 75,
//                     height: 75,
//                     color: Colors.orange,
//                   ),
//                 ),
//               ],
//             );
//           } else {
//             return 
//             Column(
//               children: [
//                 Container(
//                   width: 400,
//                   height: 400,
//                   child: ListView.builder(
//                     itemCount: snapshot.data!.length,
//                     itemBuilder: (BuildContext context, int index) {
//                       return ListTile(
//                         leading: Text(snapshot.data![index].values
//                             .elementAt(3)
//                             .toString()),
//                         title: Text(snapshot.data![index].values.elementAt(2)),
//                         trailing:
//                             Text(snapshot.data![index].values.elementAt(4)),
//                       );
//                     },
//                   ),
//                 ),
//                 TextField(
//                   controller: name,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                 ),
//                 TextField(
//                   controller: age,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                 ),
//                 TextField(
//                   controller: gender,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () async {
//                     await supabase.from("table_users").insert({
//                       "name": name.text,
//                       "age": int.parse(age.text),
//                       "gender": gender.text
//                     }).select();
//                   },
//                   child: Container(
//                     width: 75,
//                     height: 75,
//                     color: Colors.orange,
//                   ),
//                 ),
//               ],
//             );
//           }
//         },
//       ),
//     );
//   }
// }
