import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:qhance_uiii/Screens/type2/model/addTaskModel.dart';
import 'package:qhance_uiii/utils/api_provider.dart';
import 'package:qhance_uiii/utils/shared_data.dart';

class ItemController2 extends GetxController {
  addItem(
    Map data,
    context,
  ) async {
    AddTaskModel? model;

    try {
      var token = await getSavedObject('token');
      var url = 'https://tbc.d-note.com/api/addTaskDetails';

      FormData formData = FormData.fromMap({
        'task_name': data['task_name'],
        'domain_id': data['domain_id'],
       
        'evidence_of_compliance': data['evidence_of_compliance'],
        'start_date': data['start_date'],
        'end_date': data['end_date'],
        'per_visit':data['per_visit'],
        'staff_availability':data['staff_availability'],
        'awareness_trained':data['awareness_trained']
      });
      print('Form data status : ${data['task_name']}');

      Response response = await ApiProvider().post(url, formData, token: token);
      if (response.statusCode == 200 &&
          response.data["SuccessResponse"]['statusCode'] == true) {
        print('status message : ${response.data}');
        model = AddTaskModel.fromJson(response.data);

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
