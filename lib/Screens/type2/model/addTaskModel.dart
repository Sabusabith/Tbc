class AddTaskModel {
  SuccessResponse? successResponse;

  AddTaskModel({this.successResponse});

  AddTaskModel.fromJson(Map<String, dynamic> json) {
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
  String? taskDetailId;
  String? taskProgressionId;
  String? message;

  SuccessResponse(
      {this.statusCode,
      this.resposeCode,
      this.taskDetailId,
      this.taskProgressionId,
      this.message});

  SuccessResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    resposeCode = json['resposeCode'];
    taskDetailId = json['taskDetailId'];
    taskProgressionId = json['taskProgressionId'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusCode'] = this.statusCode;
    data['resposeCode'] = this.resposeCode;
    data['taskDetailId'] = this.taskDetailId;
    data['taskProgressionId'] = this.taskProgressionId;
    data['message'] = this.message;
    return data;
  }
}
