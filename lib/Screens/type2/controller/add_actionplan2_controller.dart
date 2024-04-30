import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:qhance_uiii/Screens/type2/model/addActionPlanModel.dart';
import 'package:qhance_uiii/utils/api_provider.dart';

import '../../../utils/shared_data.dart';

class AddActionPlanController extends GetxController {



AddActionplanModel?model;



  addActionPlan(Map data,BuildContext context) async {




  try{  
  var url = 'https://tbc.d-note.com/api/addTaskProgressionActionPlan';

      var token = await getSavedObject('token');




    FormData formData = FormData.fromMap({
      'action_plan': data['action_plan'],
      'task_progression_id': data['task_progression_id'],
      'task_detail_id': data['task_detail_id'],
      'phc_detail_id': data['phc_detail_id'],
    
      'evidence_of_compliance': data['evidence_of_compliance'],
      
    });
    Response response = await ApiProvider().post(url, formData,token: token);
    if (response.statusCode == 200 &&
        response.data["SuccessResponse"]['statusCode'] == true) {

model = AddActionplanModel.fromJson(response.data);
 ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(model?.successResponse?.message.toString()??"Task details updated successfully"),
            backgroundColor: Colors.green,
          ),
        );
        Get.back();
      print("ActionPlan Data :  ${response.data}");
    } else {
       ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Somthing Error!',
            ),
            backgroundColor: Colors.red,
          ),
        );
    }
  }catch(e){
    throw Exception(e);
  }
}

}