class AddActionplanModel {
  SuccessResponse? successResponse;

  AddActionplanModel({this.successResponse});

  AddActionplanModel.fromJson(Map<String, dynamic> json) {
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
  String? actionPlanId;
  String? message;

  SuccessResponse(
      {this.statusCode, this.resposeCode, this.actionPlanId, this.message});

  SuccessResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    resposeCode = json['resposeCode'];
    actionPlanId = json['actionPlanId'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusCode'] = this.statusCode;
    data['resposeCode'] = this.resposeCode;
    data['actionPlanId'] = this.actionPlanId;
    data['message'] = this.message;
    return data;
  }
}
