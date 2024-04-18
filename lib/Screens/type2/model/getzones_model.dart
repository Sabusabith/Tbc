// To parse this JSON data, do
//
//     final getZoneModel = getZoneModelFromJson(jsonString);

import 'dart:convert';

GetZoneModel getZoneModelFromJson(String str) => GetZoneModel.fromJson(json.decode(str));

String getZoneModelToJson(GetZoneModel data) => json.encode(data.toJson());

class GetZoneModel {
    SuccessResponse successResponse;

    GetZoneModel({
        required this.successResponse,
    });

    factory GetZoneModel.fromJson(Map<String, dynamic> json) => GetZoneModel(
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
    String? createdById;
    String? zoneName;
    String? remarks;
    int? status;
    DateTime createdAt;
    DateTime updatedAt;
    List<Phc>? phcDetail;

    Datum({
        required this.id,
        required this.createdById,
        required this.zoneName,
        required this.remarks,
        required this.status,
        required this.createdAt,
        required this.updatedAt,
        required this.phcDetail,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        createdById: json["created_by_id"],
        zoneName: json["zone_name"],
        remarks: json["remarks"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        phcDetail: List<Phc>.from(json["phc_detail"].map((x) => Phc.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "created_by_id": createdById,
        "zone_name": zoneName,
        "remarks": remarks,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "phc_detail": List<dynamic>.from(phcDetail!.map((x) => x.toJson())),
    };
}

class Phc {
    String? id;
    String? zoneId;
    String? createdById;
    String? phcName;
    String remarks;
    int status;
    DateTime createdAt;
    DateTime updatedAt;
    List<Phc>? phcTbcCode;
    String? phcDetailId;
    String? tbcCode;

    Phc({
        required this.id,
        required this.zoneId,
        required this.createdById,
        this.phcName,
        required this.remarks,
        required this.status,
        required this.createdAt,
        required this.updatedAt,
        this.phcTbcCode,
        this.phcDetailId,
        this.tbcCode,
    });

    factory Phc.fromJson(Map<String, dynamic> json) => Phc(
        id: json["id"],
        zoneId: json["zone_id"],
        createdById: json["created_by_id"],
        phcName: json["phc_name"],
        remarks: json["remarks"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        phcTbcCode: json["phc_tbc_code"] == null ? [] : List<Phc>.from(json["phc_tbc_code"]!.map((x) => Phc.fromJson(x))),
        phcDetailId: json["phc_detail_id"],
        tbcCode: json["tbc_code"],
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
        "phc_tbc_code": phcTbcCode == null ? [] : List<dynamic>.from(phcTbcCode!.map((x) => x.toJson())),
        "phc_detail_id": phcDetailId,
        "tbc_code": tbcCode,
    };
}
