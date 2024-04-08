// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
    bool success;
    String apiToken;
    Message message;

    LoginModel({
        required this.success,
        required this.apiToken,
        required this.message,
    });

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        success: json["success"],
        apiToken: json["api_token"],
        message: Message.fromJson(json["message"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "api_token": apiToken,
        "message": message.toJson(),
    };
}

class Message {
    String? id;
    String? name;
    String? email;
    String? phone;
    String? apiToken;
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
        required this.phone,
        required this.apiToken,
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
        phone: json["phone"],
        apiToken: json["api_token"],
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
        "phone": phone,
        "api_token": apiToken,
        "status": status,
        "user_type": userType,
        "email_verified_at": emailVerifiedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "user_detail": List<dynamic>.from(userDetail!.map((x) => x.toJson())),
    };
}

class UserDetail {
    String? id;
    String? userId;
    String? roleId;
    String? phcDetailId;
    String? phcTbcCodeId;
    String? specializationId;
    dynamic createdById;
    String? remarks;
    DateTime createdAt;
    DateTime updatedAt;

    UserDetail({
        required this.id,
        required this.userId,
        required this.roleId,
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
        roleId: json["role_id"],
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
        "role_id": roleId,
        "phc_detail_id": phcDetailId,
        "phc_tbc_code_id": phcTbcCodeId,
        "specialization_id": specializationId,
        "created_by_id": createdById,
        "remarks": remarks,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
