import 'base_date.dart';
import 'dart:convert';

class Recipe extends BaseDate {
  String id;
  String name;
  String image;
  String rating;
  String totalTime;

  Recipe({
    required this.id,
    required this.name,
    required this.image,
    required this.rating,
    required this.totalTime,
  }) : super();

  factory Recipe.fromRawJson(String str) =>
      Recipe.fromJson(json.decode(str) as Map<String, dynamic>);

  String toRawJson() => json.encode(toJson());

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'image': image,
    'rating': rating,
    'totalTime': totalTime,
    'createdAt': createdAt,
    'modifiedAt': modifiedAt
  };

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      rating: json['rating'],
      totalTime: json['totalTime'],
    );
  }

}