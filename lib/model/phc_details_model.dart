// To parse this JSON data, do
//
//     final getPhcDetailModel = getPhcDetailModelFromJson(jsonString);

import 'dart:convert';

GetPhcDetailModel getPhcDetailModelFromJson(String str) => GetPhcDetailModel.fromJson(json.decode(str));

String getPhcDetailModelToJson(GetPhcDetailModel data) => json.encode(data.toJson());

class GetPhcDetailModel {
    SuccessResponse successResponse;

    GetPhcDetailModel({
        required this.successResponse,
    });

    factory GetPhcDetailModel.fromJson(Map<String, dynamic> json) => GetPhcDetailModel(
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
    String? zoneId;
    String? createdById;
    String? phcName;
    String? remarks;
    int? status;
    DateTime createdAt;
    DateTime updatedAt;

    Datum({
        required this.id,
        required this.zoneId,
        required this.createdById,
        required this.phcName,
        required this.remarks,
        required this.status,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        zoneId: json["zone_id"],
        createdById: json["created_by_id"],
        phcName: json["phc_name"],
        remarks: json["remarks"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
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
    };
}
