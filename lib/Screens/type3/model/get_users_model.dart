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
    Zone zone;
    PhcDetail phcDetail;
    List<UserDetail> userDetail;

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
        zone: Zone.fromJson(json["zone"]),
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
        "zone": zone.toJson(),
        "phc_detail": phcDetail.toJson(),
        "user_detail": List<dynamic>.from(userDetail.map((x) => x.toJson())),
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
    List<PhcDomainDetail>? phcDomainDetail;

    PhcDetail({
        required this.id,
        required this.zoneId,
        required this.createdById,
        required this.phcName,
        required this.remarks,
        required this.status,
        required this.createdAt,
        required this.updatedAt,
        required this.phcDomainDetail,
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
        phcDomainDetail: List<PhcDomainDetail>.from(json["phc_domain_detail"].map((x) => PhcDomainDetail.fromJson(x))),
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
        "phc_domain_detail": List<dynamic>.from(phcDomainDetail!.map((x) => x.toJson())),
    };
}

class PhcDomainDetail {
    String? id;
    String? phcDetailId;
    String? domainId;
    String? remarks;
    String? createdById;
    int? status;
    DateTime createdAt;
    DateTime updatedAt;
    Zone domain;

    PhcDomainDetail({
        required this.id,
        required this.phcDetailId,
        required this.domainId,
        required this.remarks,
        required this.createdById,
        required this.status,
        required this.createdAt,
        required this.updatedAt,
        required this.domain,
    });

    factory PhcDomainDetail.fromJson(Map<String, dynamic> json) => PhcDomainDetail(
        id: json["id"],
        phcDetailId: json["phc_detail_id"],
        domainId: json["domain_id"],
        remarks: json["remarks"],
        createdById: json["created_by_id"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        domain: Zone.fromJson(json["domain"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "phc_detail_id": phcDetailId,
        "domain_id": domainId,
        "remarks": remarks,
        "created_by_id": createdById,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "domain": domain.toJson(),
    };
}

class Zone {
    String? id;
    String? createdById;
    String? domainName;
    String? remarks;
    int? status;
    DateTime createdAt;
    DateTime updatedAt;
    String? zoneName;

    Zone({
        required this.id,
        required this.createdById,
        this.domainName,
        required this.remarks,
        required this.status,
        required this.createdAt,
        required this.updatedAt,
        this.zoneName,
    });

    factory Zone.fromJson(Map<String, dynamic> json) => Zone(
        id: json["id"],
        createdById: json["created_by_id"],
        domainName: json["domain_name"],
        remarks: json["remarks"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        zoneName: json["zone_name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "created_by_id": createdById,
        "domain_name": domainName,
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
    String? roleId;
    String? phcDetailId;
    String? phcTbcCodeId;
    String? specializationId;
    dynamic createdById;
    String? remarks;
    DateTime createdAt;
    DateTime updatedAt;
    User user;
    Role role;
    Role specialization;

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
        required this.user,
        required this.role,
        required this.specialization,
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
        user: User.fromJson(json["user"]),
        role: Role.fromJson(json["role"]),
        specialization: Role.fromJson(json["specialization"]),
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
        "user": user.toJson(),
        "role": role.toJson(),
        "specialization": specialization.toJson(),
    };
}

class Role {
    String? id;
    String? createdById;
    String? roleName;
    int? status;
    DateTime createdAt;
    DateTime updatedAt;
    String? speciality;

    Role({
        required this.id,
        required this.createdById,
        this.roleName,
        required this.status,
        required this.createdAt,
        required this.updatedAt,
        this.speciality,
    });

    factory Role.fromJson(Map<String, dynamic> json) => Role(
        id: json["id"],
        createdById: json["created_by_id"],
        roleName: json["role_name"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        speciality: json["speciality"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "created_by_id": createdById,
        "role_name": roleName,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "speciality": speciality,
    };
}

class User {
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

    User({
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
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
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
    };
}
