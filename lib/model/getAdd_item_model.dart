// To parse this JSON data, do
//
//     final getAddItemModel = getAddItemModelFromJson(jsonString);

import 'dart:convert';

GetAddItemModel getAddItemModelFromJson(String str) => GetAddItemModel.fromJson(json.decode(str));

String getAddItemModelToJson(GetAddItemModel data) => json.encode(data.toJson());

class GetAddItemModel {
    SuccessResponse successResponse;

    GetAddItemModel({
        required this.successResponse,
    });

    factory GetAddItemModel.fromJson(Map<String, dynamic> json) => GetAddItemModel(
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
    String? taskName;
    String? evidenceOfCompliance;
    int? perVisit;
    String? staffAvailability;
    String? awarenessTrained;
    dynamic remarks;
    DateTime createdAt;
    DateTime updatedAt;
    List<TaskDetail>? taskDetail;

    Datum({
        required this.id,
        required this.createdById,
        required this.taskName,
        required this.evidenceOfCompliance,
        required this.perVisit,
        required this.staffAvailability,
        required this.awarenessTrained,
        required this.remarks,
        required this.createdAt,
        required this.updatedAt,
        required this.taskDetail,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        createdById: json["created_by_id"],
        taskName: json["task_name"],
        evidenceOfCompliance: json["evidence_of_compliance"],
        perVisit: json["per_visit"],
        staffAvailability: json["staff_availability"],
        awarenessTrained: json["awareness_trained"],
        remarks: json["remarks"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        taskDetail: List<TaskDetail>.from(json["task_detail"].map((x) => TaskDetail.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "created_by_id": createdById,
        "task_name": taskName,
        "evidence_of_compliance": evidenceOfCompliance,
        "per_visit": perVisit,
        "staff_availability": staffAvailability,
        "awareness_trained": awarenessTrained,
        "remarks": remarks,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "task_detail": List<dynamic>.from(taskDetail!.map((x) => x.toJson())),
    };
}

class TaskDetail {
    String? id;
    String? taskId;
    String? assignedToId;
    String? coAssignedToId;
    String? correctionActionPlan;
    String? createdById;
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

    TaskDetail({
        required this.id,
        required this.taskId,
        required this.assignedToId,
        required this.coAssignedToId,
        required this.correctionActionPlan,
        required this.createdById,
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

    factory TaskDetail.fromJson(Map<String, dynamic> json) => TaskDetail(
        id: json["id"],
        taskId: json["task_id"],
        assignedToId: json["assigned_to_id"],
        coAssignedToId: json["co_assigned_to_id"],
        correctionActionPlan: json["correction_action_plan"],
        createdById: json["created_by_id"],
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
        "task_id": taskId,
        "assigned_to_id": assignedToId,
        "co_assigned_to_id": coAssignedToId,
        "correction_action_plan": correctionActionPlan,
        "created_by_id": createdById,
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
    int? status;
    String? userType;
    dynamic emailVerifiedAt;
    DateTime createdAt;
    DateTime updatedAt;

    AssignedTo({
        required this.id,
        required this.name,
        required this.email,
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
