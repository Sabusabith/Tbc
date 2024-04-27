// To parse this JSON data, do
//
//     final addTaskModel = addTaskModelFromJson(jsonString);

import 'dart:convert';

AddTaskModel addTaskModelFromJson(String str) => AddTaskModel.fromJson(json.decode(str));

String addTaskModelToJson(AddTaskModel data) => json.encode(data.toJson());

class AddTaskModel {
    SuccessResponse successResponse;

    AddTaskModel({
        required this.successResponse,
    });

    factory AddTaskModel.fromJson(Map<String, dynamic> json) => AddTaskModel(
        successResponse: SuccessResponse.fromJson(json["SuccessResponse"]),
    );

    Map<String, dynamic> toJson() => {
        "SuccessResponse": successResponse.toJson(),
    };
}

class SuccessResponse {
    bool statusCode;
    int resposeCode;
    String taskId;
    String message;

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
