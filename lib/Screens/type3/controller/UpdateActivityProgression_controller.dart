import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:qhance_uiii/Screens/type3/model/updateTaskProgression_model.dart';
import 'package:qhance_uiii/utils/api_provider.dart';
import 'package:qhance_uiii/utils/shared_data.dart';

import '../../../utils/toast.dart';

class ItemController extends GetxController {
  addItem(Map data, context,) async {
    UpdateTaskprogressionModel? model;

    try {
      var token = await getSavedObject('token');
      var url = 'https://tbc.d-note.com/api/addTaskProgression';

      FormData formData = FormData.fromMap({
        'task_detail_id': data['task_detail_id'],
        'phc_detail_id': data['phc_detail_id'],
        'per_visit': data['per_visit'],
        'staff_availability': data['staff_availability'],
        'awareness_trained': data['awareness_trained'],
        'remarks': data['remarks']
      });
        print('Form data status : ${data['staff_availability']}');

      Response response = await ApiProvider().post(url,formData,token: token);
      if (response.statusCode == 200 &&
          response.data["SuccessResponse"]['statusCode'] == true) {
        print('status message : ${response.data}');
        model = UpdateTaskprogressionModel.fromJson(response.data);

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(model.successResponse.message.toString()),
            backgroundColor: Colors.green,
          ),
        );
        Get.back();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Somthing Error!',
            ),
            backgroundColor: Colors.red,
          ),
        );
        print('status message : ${response.data['status']}');
//      if (response.data['message']['original']['task_name']) {
//          customSnackBar(response.data['message']['original']['task_name'], response.data['message']['original']['task_name'], context,isError: true);
//      }else if(response.data['message']['original']['evidence_of_compliance']){
//       customSnackBar(response.data['message']['original']['evidence_of_compliance'], response.data['message']['original']['evidence_of_compliance'], context,isError: true);
//      }else if(response.data['message']['original']['per_visit']){
//  customSnackBar(response.data['message']['original']['per_visit'], response.data['message']['original']['per_visit'], context,isError: true);
//      }else if(response.data['message']['original']['staff_availability']){
//  customSnackBar(response.data['message']['original']['staff_availability'], response.data['message']['original']['staff_availability'], context,isError: true);
//      }else if(response.data['message']['original']['awareness_trained']){
//  customSnackBar(response.data['message']['original']['awareness_trained'], response.data['message']['original']['awareness_trained'], context,isError: true);
//      }
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
