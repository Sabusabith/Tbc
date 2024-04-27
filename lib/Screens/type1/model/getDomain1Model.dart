class GetDomainFromPhcModel1 {
  SuccessResponse? successResponse;

  GetDomainFromPhcModel1({this.successResponse});

  GetDomainFromPhcModel1.fromJson(Map<String, dynamic> json) {
    successResponse = json['SuccessResponse'] != null
        ? new SuccessResponse.fromJson(json['SuccessResponse'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.successResponse != null) {
      data['SuccessResponse'] = this.successResponse!.toJson();
    }
    return data;
  }
}

class SuccessResponse {
  bool? statusCode;
  int? resposeCode;
  List<Data>? data;

  SuccessResponse({this.statusCode, this.resposeCode, this.data});

  SuccessResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    resposeCode = json['resposeCode'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusCode'] = this.statusCode;
    data['resposeCode'] = this.resposeCode;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? id;
  String? phcDetailId;
  String? domainId;
  String? remarks;
  String? createdById;
  int? status;
  String? createdAt;
  String? updatedAt;
  Domain? domain;

  Data(
      {this.id,
      this.phcDetailId,
      this.domainId,
      this.remarks,
      this.createdById,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.domain});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    phcDetailId = json['phc_detail_id'];
    domainId = json['domain_id'];
    remarks = json['remarks'];
    createdById = json['created_by_id'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    domain =
        json['domain'] != null ? new Domain.fromJson(json['domain']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['phc_detail_id'] = this.phcDetailId;
    data['domain_id'] = this.domainId;
    data['remarks'] = this.remarks;
    data['created_by_id'] = this.createdById;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.domain != null) {
      data['domain'] = this.domain!.toJson();
    }
    return data;
  }
}

class Domain {
  String? id;
  String? createdById;
  String? domainName;
  String? remarks;
  int? status;
  String? createdAt;
  String? updatedAt;
  List<TaskDetail>? taskDetail;

  Domain(
      {this.id,
      this.createdById,
      this.domainName,
      this.remarks,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.taskDetail});

  Domain.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdById = json['created_by_id'];
    domainName = json['domain_name'];
    remarks = json['remarks'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['task_detail'] != null) {
      taskDetail = <TaskDetail>[];
      json['task_detail'].forEach((v) {
        taskDetail!.add(new TaskDetail.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_by_id'] = this.createdById;
    data['domain_name'] = this.domainName;
    data['remarks'] = this.remarks;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.taskDetail != null) {
      data['task_detail'] = this.taskDetail!.map((v) => v.toJson()).toList();
    }
    return data;
  }
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
  String? startDate;
  String? endDate;
  String? statusProgression;
  String? remarks;
  int? score;
  String? createdAt;
  String? updatedAt;

  TaskDetail(
      {this.id,
      this.domainId,
      this.assignedToId,
      this.coAssignedToId,
      this.createdById,
      this.taskName,
      this.evidenceOfCompliance,
      this.dependentDays,
      this.workingDays,
      this.startDate,
      this.endDate,
      this.statusProgression,
      this.remarks,
      this.score,
      this.createdAt,
      this.updatedAt});

  TaskDetail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    domainId = json['domain_id'];
    assignedToId = json['assigned_to_id'];
    coAssignedToId = json['co_assigned_to_id'];
    createdById = json['created_by_id'];
    taskName = json['task_name'];
    evidenceOfCompliance = json['evidence_of_compliance'];
    dependentDays = json['dependent_days'];
    workingDays = json['working_days'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    statusProgression = json['status_progression'];
    remarks = json['remarks'];
    score = json['score'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['domain_id'] = this.domainId;
    data['assigned_to_id'] = this.assignedToId;
    data['co_assigned_to_id'] = this.coAssignedToId;
    data['created_by_id'] = this.createdById;
    data['task_name'] = this.taskName;
    data['evidence_of_compliance'] = this.evidenceOfCompliance;
    data['dependent_days'] = this.dependentDays;
    data['working_days'] = this.workingDays;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['status_progression'] = this.statusProgression;
    data['remarks'] = this.remarks;
    data['score'] = this.score;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
