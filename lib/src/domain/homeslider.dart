import 'package:flutter/material.dart';

class HomeSlider {
  int id;
  String title;
  String description;
  String imageUrl;
  String actionUrl;

  HomeSlider({@required this.id, this.title, this.description, this.imageUrl, this.actionUrl});

  factory HomeSlider.fromJson(Map<String, dynamic> json) => HomeSlider(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        description: json["description"] == null ? null : json["description"],
        imageUrl: json["imageUrl"] == null ? null : json["imageUrl"],
        actionUrl: json["actionUrl"] == null ? null : json["actionUrl"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "description": description == null ? null : description,
        "imageUrl": imageUrl == null ? null : imageUrl,
        "actionUrl": actionUrl == null ? null : actionUrl,
      };
}
