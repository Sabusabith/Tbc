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
    DateTime createdAt;
    DateTime updatedAt;
    List<UserDetail>? userDetail;

    Message({
        required this.id,
        required this.name,
        required this.email,
        required this.status,
        required this.userType,
        required this.emailVerifiedAt,
        required this.createdAt,
        required this.updatedAt,
        required this.userDetail,
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
        userDetail: List<UserDetail>.from(json["user_detail"].map((x) => UserDetail.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "status": status,
        "user_type": userType,
        "email_verified_at": emailVerifiedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "user_detail": List<dynamic>.from(userDetail!.map((x) => x.toJson())),
    };
}

class UserDetail {
    String id;
    String userId;
    String phcDetailId;
    String phcTbcCodeId;
    String specializationId;
    dynamic createdById;
    String remarks;
    DateTime createdAt;
    DateTime updatedAt;

    UserDetail({
        required this.id,
        required this.userId,
        required this.phcDetailId,
        required this.phcTbcCodeId,
        required this.specializationId,
        required this.createdById,
        required this.remarks,
        required this.createdAt,
        required this.updatedAt,
    });

    factory UserDetail.fromJson(Map<String, dynamic> json) => UserDetail(
        id: json["id"],
        userId: json["user_id"],
        phcDetailId: json["phc_detail_id"],
        phcTbcCodeId: json["phc_tbc_code_id"],
        specializationId: json["specialization_id"],
        createdById: json["created_by_id"],
        remarks: json["remarks"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "phc_detail_id": phcDetailId,
        "phc_tbc_code_id": phcTbcCodeId,
        "specialization_id": specializationId,
        "created_by_id": createdById,
        "remarks": remarks,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
