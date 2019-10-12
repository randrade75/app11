// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

StoreList userModelFromJson(String str) => StoreList.fromJson(json.decode(str));

String userModelToJson(StoreList data) => json.encode(data.toJson());

class StoreList {
    int id;
    String company;
    String location;
    String type;


    StoreList({
        this.id,
        this.company,
        this.location,
        this.type
    });

    factory StoreList.fromJson(Map<String, dynamic> json) => new StoreList(
        id: json["id"],
        company: json["company"],
        location: json["location"],
        type: json["type"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "company": company,
        "location": location,
        "type": type,
    };
}
