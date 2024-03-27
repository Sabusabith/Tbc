// To parse this JSON data, do
//
//     final addItemModel = addItemModelFromJson(jsonString);

import 'dart:convert';

AddItemModel addItemModelFromJson(String str) => AddItemModel.fromJson(json.decode(str));

String addItemModelToJson(AddItemModel data) => json.encode(data.toJson());

class AddItemModel {
    SuccessResponse successResponse;

    AddItemModel({
        required this.successResponse,
    });

    factory AddItemModel.fromJson(Map<String, dynamic> json) => AddItemModel(
        successResponse: SuccessResponse.fromJson(json["SuccessResponse"]),
    );

    Map<String, dynamic> toJson() => {
        "SuccessResponse": successResponse.toJson(),
    };
}

class SuccessResponse {
    bool? statusCode;
    int? resposeCode;
    String? taskId;
    String? message;

    SuccessResponse({
        required this.statusCode,
        required this.resposeCode,
        required this.taskId,
        required this.message,
    });

    factory SuccessResponse.fromJson(Map<String, dynamic> json) => SuccessResponse(
        statusCode: json["statusCode"],
        resposeCode: json["resposeCode"],
        taskId: json["taskId"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "resposeCode": resposeCode,
        "taskId": taskId,
        "message": message,
    };
}
