class GetAllUsersModel {
  SuccessResponse? successResponse;

  GetAllUsersModel({this.successResponse});

  GetAllUsersModel.fromJson(Map<String, dynamic> json) {
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
  String? name;
  String? email;
  String? phone;
  String? apiToken;
  int? status;
  String? userType;
  Null? emailVerifiedAt;
  String? createdAt;
  String? updatedAt;
  List<UserDetail>? userDetail;

  Data(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.apiToken,
      this.status,
      this.userType,
      this.emailVerifiedAt,
      this.createdAt,
      this.updatedAt,
      this.userDetail});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    apiToken = json['api_token'];
    status = json['status'];
    userType = json['user_type'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['user_detail'] != null) {
      userDetail = <UserDetail>[];
      json['user_detail'].forEach((v) {
        userDetail!.add(new UserDetail.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['api_token'] = this.apiToken;
    data['status'] = this.status;
    data['user_type'] = this.userType;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.userDetail != null) {
      data['user_detail'] = this.userDetail!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class UserDetail {
  String? id;
  String? userId;
  String? roleId;
  String? phcDetailId;
  String? phcTbcCodeId;
  String? specializationId;
  String? createdById;
  String? remarks;
  String? createdAt;
  String? updatedAt;

  UserDetail(
      {this.id,
      this.userId,
      this.roleId,
      this.phcDetailId,
      this.phcTbcCodeId,
      this.specializationId,
      this.createdById,
      this.remarks,
      this.createdAt,
      this.updatedAt});

  UserDetail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    roleId = json['role_id'];
    phcDetailId = json['phc_detail_id'];
    phcTbcCodeId = json['phc_tbc_code_id'];
    specializationId = json['specialization_id'];
    createdById = json['created_by_id'];
    remarks = json['remarks'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['role_id'] = this.roleId;
    data['phc_detail_id'] = this.phcDetailId;
    data['phc_tbc_code_id'] = this.phcTbcCodeId;
    data['specialization_id'] = this.specializationId;
    data['created_by_id'] = this.createdById;
    data['remarks'] = this.remarks;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
