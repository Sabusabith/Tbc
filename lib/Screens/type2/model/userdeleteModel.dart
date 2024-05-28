class UserdeletModel {
  SuccessResponse? successResponse;

  UserdeletModel({this.successResponse});

  UserdeletModel.fromJson(Map<String, dynamic> json) {
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
  int? data;
  String? message;

  SuccessResponse({this.statusCode, this.resposeCode, this.data, this.message});

  SuccessResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    resposeCode = json['resposeCode'];
    data = json['data'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusCode'] = this.statusCode;
    data['resposeCode'] = this.resposeCode;
    data['data'] = this.data;
    data['message'] = this.message;
    return data;
  }
}
