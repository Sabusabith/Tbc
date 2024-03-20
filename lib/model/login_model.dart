// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
    bool success;
    Message message;

    LoginModel({
        required this.success,
        required this.message,
    });

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        success: json["success"],
        message: Message.fromJson(json["message"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message.toJson(),
    };
}

class Message {
    String? id;
    String? name;
    String? email;
    int? status;
    String? userType;
    dynamic emailVerifiedAt;
    DateTime? createdAt;
    DateTime? updatedAt;

    Message({
        required this.id,
        required this.name,
        required this.email,
        required this.status,
        required this.userType,
        required this.emailVerifiedAt,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Message.fromJson(Map<String, dynamic> json) => Message(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        status: json["status"],
        userType: json["user_type"],
        emailVerifiedAt: json["email_verified_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "status": status,
        "user_type": userType,
        "email_verified_at": emailVerifiedAt,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}
