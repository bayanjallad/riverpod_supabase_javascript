import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/constants.dart';
import '../provider/user_provider.dart';

class Newfirstpage extends ConsumerWidget {
  Newfirstpage({super.key});

  TextEditingController namee = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController gender = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(Providered);
    return Scaffold(
      body: name.when(
        data: (data) {
          return Column(
            children: [
              Container(
                width: 400,
                height: 400,
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Text(data[index].age.toString()),
                      title: Text(data[index].name),
                      trailing: Text(data[index].gender),
                    );
                  },
                ),
              ),
              Spacer(),
              TextField(
                controller: namee,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Padding(
                padding:EdgeInsets.only(top: 10,bottom: 10),
                child: TextField(
                  controller: age,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              TextField(
                controller: gender,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  await supabase.from("table_users").insert({
                    "name": namee.text,
                    "age": int.parse(age.text),
                    "gender": gender.text
                  }).select();
                },
                child: Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 106, 255, 228)
                  ),
                ),
              ),
            ],
          );
        },
        error: (error, stackTrace) => Text("$error"),
        loading: () => CircularProgressIndicator(),
      ),
    );
  }
}
