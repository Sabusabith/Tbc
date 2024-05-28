class GetRolesModel {
  SuccessResponse? successResponse;

  GetRolesModel({this.successResponse});

  GetRolesModel.fromJson(Map<String, dynamic> json) {
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
  String? createdById;
  String? roleName;
  int? status;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.createdById,
      this.roleName,
      this.status,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdById = json['created_by_id'];
    roleName = json['role_name'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_by_id'] = this.createdById;
    data['role_name'] = this.roleName;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
