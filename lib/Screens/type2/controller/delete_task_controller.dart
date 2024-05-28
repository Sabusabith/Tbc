import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qhance_uiii/Screens/type2/model/deleteTask_model.dart';
import 'package:qhance_uiii/utils/shared_data.dart';

import '../../../utils/api_provider.dart';

class DeleteTaskController extends GetxController {
  DeleteTaskModel?model;
  deleteTask(taskid,context) async {
    var url = 'https://tbc.d-note.com/api/statusChange?';
    var token = await getSavedObject('token');
print("Task detail id : $taskid");
    Map<String, dynamic> queryParams = {
      'task_detail_id': taskid,
      'status': 0,
    };

    var response =
        await ApiProvider().get(url, token: token, queryParams: queryParams);

    if (response.statusCode == 200 &&
        response.data["SuccessResponse"]['statusCode'] == true) {
      
     model = DeleteTaskModel.fromJson(response.data);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Task deleted successfully"??""),
            backgroundColor: Colors.green,
          ),
        );

                 print("delete task : ${model?.successResponse?.data}");

    }else{
        Get.snackbar("Something went wrong", '');
    }


  }
}
