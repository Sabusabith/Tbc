import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
import 'package:qhance_uiii/Screens/type3/model/updateRolesmodel.dart';
import 'package:qhance_uiii/helper/colors.dart';
import 'package:qhance_uiii/utils/api_provider.dart';

import '../../../utils/shared_data.dart';

class UpdateRoleController extends GetxController{

UpdateRolesModel?model;
  updateRole(BuildContext context,Map data,)async{
    try{
var url = "https://tbc.d-note.com/api/updateRole";
      var token = await getSavedObject('token');

FormData formData = FormData.fromMap({
'role_id': data['role_id'],
'user_id':data['user_id']
});
var response = await ApiProvider().post(url, formData,token: token);
if (response.statusCode == 200 &&
          response.data["SuccessResponse"]['statusCode'] == true) {
  model = UpdateRolesModel.fromJson(response.data);
  
         Get.snackbar(response.data["SuccessResponse"]['message'], '',backgroundColor: myColor,colorText:Colors.white,snackPosition: SnackPosition.BOTTOM);
}else{
  
                          Get.snackbar("Something went wrong", '',backgroundColor: Colors.red,colorText: Colors.white);

}
  }catch(e){
    throw Exception(e);
  }
}
}