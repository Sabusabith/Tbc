// To parse this JSON data, do
//
//     final zoneModel = zoneModelFromJson(jsonString);

import 'dart:convert';

ZoneModel zoneModelFromJson(String str) => ZoneModel.fromJson(json.decode(str));

String zoneModelToJson(ZoneModel data) => json.encode(data.toJson());

class ZoneModel {
    SuccessResponse successResponse;

    ZoneModel({
        required this.successResponse,
    });

    factory ZoneModel.fromJson(Map<String, dynamic> json) => ZoneModel(
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

    Datum({
        required this.id,
        required this.createdById,
        required this.zoneName,
        required this.remarks,
        required this.status,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        createdById: json["created_by_id"],
        zoneName: json["zone_name"],
        remarks: json["remarks"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "created_by_id": createdById,
        "zone_name": zoneName,
        "remarks": remarks,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
