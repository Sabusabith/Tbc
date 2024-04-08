// To parse this JSON data, do
//
//     final getActionPlanModel = getActionPlanModelFromJson(jsonString);

import 'dart:convert';

GetActionPlanModel getActionPlanModelFromJson(String str) => GetActionPlanModel.fromJson(json.decode(str));

String getActionPlanModelToJson(GetActionPlanModel data) => json.encode(data.toJson());

class GetActionPlanModel {
    SuccessResponse successResponse;

    GetActionPlanModel({
        required this.successResponse,
    });

    factory GetActionPlanModel.fromJson(Map<String, dynamic> json) => GetActionPlanModel(
        successResponse: SuccessResponse.fromJson(json["SuccessResponse"]),
    );

    Map<String, dynamic> toJson() => {
        "SuccessResponse": successResponse.toJson(),
    };
}

class SuccessResponse {
    bool statusCode;
    int resposeCode;
    List<Datum>? data;

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
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Datum {
    String? id;
    String? taskProgressionId;
    String? phcDetailId;
    String? assignedToId;
    String? coAssignedToId;
    String? createdById;
    String? actionPlan;
    int? dependentDays;
    int? workingDays;
    DateTime startDate;
    DateTime endDate;
    String? statusProgression;
    String? remarks;
    int? score;
    DateTime createdAt;
    DateTime updatedAt;
    AssignedTo? assignedTo;
    AssignedTo? coAssignedTo;

    Datum({
        required this.id,
        required this.taskProgressionId,
        required this.phcDetailId,
        required this.assignedToId,
        required this.coAssignedToId,
        required this.createdById,
        required this.actionPlan,
        required this.dependentDays,
        required this.workingDays,
        required this.startDate,
        required this.endDate,
        required this.statusProgression,
        required this.remarks,
        required this.score,
        required this.createdAt,
        required this.updatedAt,
        required this.assignedTo,
        required this.coAssignedTo,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        taskProgressionId: json["task_progression_id"],
        phcDetailId: json["phc_detail_id"],
        assignedToId: json["assigned_to_id"],
        coAssignedToId: json["co_assigned_to_id"],
        createdById: json["created_by_id"],
        actionPlan: json["action_plan"],
        dependentDays: json["dependent_days"],
        workingDays: json["working_days"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        statusProgression: json["status_progression"],
        remarks: json["remarks"],
        score: json["score"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        assignedTo: AssignedTo.fromJson(json["assigned_to"]),
        coAssignedTo: AssignedTo.fromJson(json["co_assigned_to"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "task_progression_id": taskProgressionId,
        "phc_detail_id": phcDetailId,
        "assigned_to_id": assignedToId,
        "co_assigned_to_id": coAssignedToId,
        "created_by_id": createdById,
        "action_plan": actionPlan,
        "dependent_days": dependentDays,
        "working_days": workingDays,
        "start_date": "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
        "end_date": "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
        "status_progression": statusProgression,
        "remarks": remarks,
        "score": score,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "assigned_to": assignedTo!.toJson(),
        "co_assigned_to": coAssignedTo!.toJson(),
    };
}

class AssignedTo {
    String? id;
    String? name;
    String? email;
    String? phone;
    dynamic apiToken;
    int? status;
    String? userType;
    dynamic emailVerifiedAt;
    DateTime createdAt;
    DateTime updatedAt;

    AssignedTo({
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

    factory AssignedTo.fromJson(Map<String, dynamic> json) => AssignedTo(
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
