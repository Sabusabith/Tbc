// To parse this JSON data, do
//
//     final updateTaskprogressionModel = updateTaskprogressionModelFromJson(jsonString);

import 'dart:convert';

UpdateTaskprogressionModel updateTaskprogressionModelFromJson(String str) => UpdateTaskprogressionModel.fromJson(json.decode(str));

String updateTaskprogressionModelToJson(UpdateTaskprogressionModel data) => json.encode(data.toJson());

class UpdateTaskprogressionModel {
    SuccessResponse successResponse;

    UpdateTaskprogressionModel({
        required this.successResponse,
    });

    factory UpdateTaskprogressionModel.fromJson(Map<String, dynamic> json) => UpdateTaskprogressionModel(
        successResponse: SuccessResponse.fromJson(json["SuccessResponse"]),
    );

    Map<String, dynamic> toJson() => {
        "SuccessResponse": successResponse.toJson(),
    };
}

class SuccessResponse {
    bool statusCode;
    int resposeCode;
    String progressionId;
    String message;

    SuccessResponse({
        required this.statusCode,
        required this.resposeCode,
        required this.progressionId,
        required this.message,
    });

    factory SuccessResponse.fromJson(Map<String, dynamic> json) => SuccessResponse(
        statusCode: json["statusCode"],
        resposeCode: json["resposeCode"],
        progressionId: json["progressionId"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "resposeCode": resposeCode,
        "progressionId": progressionId,
        "message": message,
    };
}
