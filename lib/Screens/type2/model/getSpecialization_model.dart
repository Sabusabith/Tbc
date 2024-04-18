// To parse this JSON data, do
//
//     final getSpecializationModel = getSpecializationModelFromJson(jsonString);

import 'dart:convert';

GetSpecializationModel getSpecializationModelFromJson(String str) => GetSpecializationModel.fromJson(json.decode(str));

String getSpecializationModelToJson(GetSpecializationModel data) => json.encode(data.toJson());

class GetSpecializationModel {
    SuccessResponse successResponse;

    GetSpecializationModel({
        required this.successResponse,
    });

    factory GetSpecializationModel.fromJson(Map<String, dynamic> json) => GetSpecializationModel(
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
    String? speciality;
    int? status;
    DateTime createdAt;
    DateTime updatedAt;

    Datum({
        required this.id,
        required this.createdById,
        required this.speciality,
        required this.status,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        createdById: json["created_by_id"],
        speciality: json["speciality"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "created_by_id": createdById,
        "speciality": speciality,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
