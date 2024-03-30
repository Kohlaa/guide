import 'package:flutter/foundation.dart';

class Room {
  static const String collectionName = 'rooms';
  String roomId;
  String title;
  String description;
  String categoryId;

  Room({
    required this.roomId,
    required this.title,
    required this.description,
    required this.categoryId,
  });

  Room.fromJson(Map<String, dynamic> json)
      : this(
          roomId: json['room_id'] as String,
          title: json['category_id'] as String == "sports"
              ? "Hotel Manager"
              : json['category_id'] as String == "movies"
                  ? "Customer Service"
                  : "Driver",
          description: json['description'] as String,
          categoryId: json['category_id'] as String,
        );

  Map<String, dynamic> toJson() {
    return {
      "room_id": roomId,
      "title": title,
      "description": description,
      "category_id": categoryId,
    };
  }
}
