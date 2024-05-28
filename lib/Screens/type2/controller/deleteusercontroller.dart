import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qhance_uiii/Screens/type2/model/userdeleteModel.dart';
import 'package:qhance_uiii/utils/api_provider.dart';

import '../../../utils/shared_data.dart';

class DeleteUserController extends GetxController {
  UserdeletModel? model;
  deleteUser(userid,context) async {
    try{
    var url = "https://tbc.d-note.com/api/userActive?";
    var token = await getSavedObject('token');

    Map<String, dynamic> queryParams = {
      'user_id': userid.toString(),
      'status': 0
    };
    var response =
        await ApiProvider().get(url, queryParams: queryParams, token: token);
    if (response.statusCode == 200 &&
        response.data["SuccessResponse"]['statusCode'] == true) {
          model = UserdeletModel.fromJson(response.data);
           ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(model?.successResponse?.message.toString()??""),
            backgroundColor: Colors.green,
          ),
        );
        }else{
                  Get.snackbar("Something went wrong", '',snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.red,colorText: Colors.white);

        }
  }catch(e){
    throw Exception(e);
  }
}
}