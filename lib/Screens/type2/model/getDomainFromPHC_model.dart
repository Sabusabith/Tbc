// To parse this JSON data, do
//
//     final getDomainFromPhcModel = getDomainFromPhcModelFromJson(jsonString);

import 'dart:convert';

GetDomainFromPhcModel2 getDomainFromPhcModelFromJson(String str) => GetDomainFromPhcModel2.fromJson(json.decode(str));

String getDomainFromPhcModelToJson(GetDomainFromPhcModel2 data) => json.encode(data.toJson());

class GetDomainFromPhcModel2 {
    SuccessResponse successResponse;

    GetDomainFromPhcModel2({
        required this.successResponse,
    });

    factory GetDomainFromPhcModel2.fromJson(Map<String, dynamic> json) => GetDomainFromPhcModel2(
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
    String? phcDetailId;
    String? domainId;
    String? remarks;
    String? createdById;
    int? status;
    DateTime createdAt;
    DateTime updatedAt;
    Domain domain;

    Datum({
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

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        phcDetailId: json["phc_detail_id"],
        domainId: json["domain_id"],
        remarks: json["remarks"],
        createdById: json["created_by_id"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        domain: Domain.fromJson(json["domain"]),
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

class Domain {
    String? id;
    String? createdById;
    String? domainName;
    String? remarks;
    int? status;
    DateTime createdAt;
    DateTime updatedAt;
    List<TaskDetail>? taskDetail;

    Domain({
        required this.id,
        required this.createdById,
        required this.domainName,
        required this.remarks,
        required this.status,
        required this.createdAt,
        required this.updatedAt,
        required this.taskDetail,
    });

    factory Domain.fromJson(Map<String, dynamic> json) => Domain(
        id: json["id"],
        createdById: json["created_by_id"],
        domainName: json["domain_name"],
        remarks: json["remarks"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        taskDetail: List<TaskDetail>.from(json["task_detail"].map((x) => TaskDetail.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "created_by_id": createdById,
        "domain_name": domainName,
        "remarks": remarks,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "task_detail": List<dynamic>.from(taskDetail!.map((x) => x.toJson())),
    };
}

class TaskDetail {
    String? id;
    String? domainId;
    String? assignedToId;
    String? coAssignedToId;
    String? createdById;
    String? taskName;
    String? evidenceOfCompliance;
    int? dependentDays;
    int? workingDays;
    DateTime startDate;
    DateTime endDate;
    String? statusProgression;
    String? remarks;
    int? score;
    DateTime createdAt;
    DateTime updatedAt;

    TaskDetail({
        required this.id,
        required this.domainId,
        required this.assignedToId,
        required this.coAssignedToId,
        required this.createdById,
        required this.taskName,
        required this.evidenceOfCompliance,
        required this.dependentDays,
        required this.workingDays,
        required this.startDate,
        required this.endDate,
        required this.statusProgression,
        required this.remarks,
        required this.score,
        required this.createdAt,
        required this.updatedAt,
    });

    factory TaskDetail.fromJson(Map<String, dynamic> json) => TaskDetail(
        id: json["id"],
        domainId: json["domain_id"],
        assignedToId: json["assigned_to_id"],
        coAssignedToId: json["co_assigned_to_id"],
        createdById: json["created_by_id"],
        taskName: json["task_name"],
        evidenceOfCompliance: json["evidence_of_compliance"],
        dependentDays: json["dependent_days"],
        workingDays: json["working_days"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        statusProgression: json["status_progression"],
        remarks: json["remarks"],
        score: json["score"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "domain_id": domainId,
        "assigned_to_id": assignedToId,
        "co_assigned_to_id": coAssignedToId,
        "created_by_id": createdById,
        "task_name": taskName,
        "evidence_of_compliance": evidenceOfCompliance,
        "dependent_days": dependentDays,
        "working_days": workingDays,
        "start_date": "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
        "end_date": "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
        "status_progression": statusProgression,
        "remarks": remarks,
        "score": score,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
