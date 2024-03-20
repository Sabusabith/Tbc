// To parse this JSON data, do
//
//     final getUsersModel = getUsersModelFromJson(jsonString);

import 'dart:convert';

GetUsersModel getUsersModelFromJson(String str) => GetUsersModel.fromJson(json.decode(str));

String getUsersModelToJson(GetUsersModel data) => json.encode(data.toJson());

class GetUsersModel {
    SuccessResponse successResponse;

    GetUsersModel({
        required this.successResponse,
    });

    factory GetUsersModel.fromJson(Map<String, dynamic> json) => GetUsersModel(
        successResponse: SuccessResponse.fromJson(json["SuccessResponse"]),
    );

    Map<String, dynamic> toJson() => {
        "SuccessResponse": successResponse.toJson(),
    };
}

class SuccessResponse {
    bool statusCode;
    int resposeCode;
    List<Datum> data;

    SuccessResponse({
        required this.statusCode,
        required this.resposeCode,
        required this.data,
    });

    factory SuccessResponse.fromJson(Map<String, dynamic> json) => SuccessResponse(
        statusCode: json["statusCode"],
        resposeCode: json["resposeCode"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "resposeCode": resposeCode,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    String? id;
    String? phcDetailId;
    String? zoneId;
    String? createdById;
    String? tbcCode;
    String? remarks;
    int? status;
    DateTime createdAt;
    DateTime updatedAt;
    PhcDetail? zone;
    PhcDetail? phcDetail;
    List<UserDetail>? userDetail;

    Datum({
        required this.id,
        required this.phcDetailId,
        required this.zoneId,
        required this.createdById,
        required this.tbcCode,
        required this.remarks,
        required this.status,
        required this.createdAt,
        required this.updatedAt,
        required this.zone,
        required this.phcDetail,
        required this.userDetail,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        phcDetailId: json["phc_detail_id"],
        zoneId: json["zone_id"],
        createdById: json["created_by_id"],
        tbcCode: json["tbc_code"],
        remarks: json["remarks"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        zone: PhcDetail.fromJson(json["zone"]),
        phcDetail: PhcDetail.fromJson(json["phc_detail"]),
        userDetail: List<UserDetail>.from(json["user_detail"].map((x) => UserDetail.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "phc_detail_id": phcDetailId,
        "zone_id": zoneId,
        "created_by_id": createdById,
        "tbc_code": tbcCode,
        "remarks": remarks,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "zone": zone!.toJson(),
        "phc_detail": phcDetail!.toJson(),
        "user_detail": List<dynamic>.from(userDetail!.map((x) => x.toJson())),
    };
}

class PhcDetail {
    String? id;
    String? zoneId;
    String? createdById;
    String? phcName;
    String? remarks;
    int? status;
    DateTime createdAt;
    DateTime updatedAt;
    String? zoneName;

    PhcDetail({
        required this.id,
        this.zoneId,
        required this.createdById,
        this.phcName,
        required this.remarks,
        required this.status,
        required this.createdAt,
        required this.updatedAt,
        this.zoneName,
    });

    factory PhcDetail.fromJson(Map<String, dynamic> json) => PhcDetail(
        id: json["id"],
        zoneId: json["zone_id"],
        createdById: json["created_by_id"],
        phcName: json["phc_name"],
        remarks: json["remarks"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        zoneName: json["zone_name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "zone_id": zoneId,
        "created_by_id": createdById,
        "phc_name": phcName,
        "remarks": remarks,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "zone_name": zoneName,
    };
}

class UserDetail {
    String? id;
    String? userId;
    String? phcDetailId;
    String? phcTbcCodeId;
    String? specializationId;
    dynamic createdById;
    String? remarks;
    DateTime createdAt;
    DateTime updatedAt;
    User? user;

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
        required this.user,
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
        user: User.fromJson(json["user"]),
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
        "user": user!.toJson(),
    };
}

class User {
    String? id;
    String? name;
    String? email;
    int? status;
    String? userType;
    dynamic emailVerifiedAt;
    DateTime createdAt;
    DateTime updatedAt;

    User({
        required this.id,
        required this.name,
        required this.email,
        required this.status,
        required this.userType,
        required this.emailVerifiedAt,
        required this.createdAt,
        required this.updatedAt,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
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
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
