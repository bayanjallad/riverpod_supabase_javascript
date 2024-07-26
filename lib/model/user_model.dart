
import 'dart:convert';

class UserModel {
    final String name;
    final int age;
    final String gender;

    UserModel({
        required this.name,
        required this.age,
        required this.gender,
    });

    UserModel copyWith({
        String? name,
        int? age,
        String? gender,
    }) => 
        UserModel(
            name: name ?? this.name,
            age: age ?? this.age,
            gender: gender ?? this.gender,
        );

    factory UserModel.fromRawJson(String str) => UserModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"],
        age: json["age"],
        gender: json["gender"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "age": age,
        "gender": gender,
    };
}
