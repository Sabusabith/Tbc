import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:qhance_uiii/Screens/type3/model/getRolesModel.dart';
import 'package:qhance_uiii/utils/api_provider.dart';

import '../../../utils/shared_data.dart';

class GetRolesController extends GetxController{
  
@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getRolesList();
  }
GetRolesModel?model;

getRolesList()async{
  
var url = "https://tbc.d-note.com/api/getRoles";
  var token = await getSavedObject('token');


var response = await ApiProvider().get(url,token: token);
if (response.statusCode == 200  && response.data["SuccessResponse"]['statusCode']==true) {
  model = GetRolesModel.fromJson(response.data);
print("Roles list  = ${model?.successResponse?.data?[0].roleName}");
}else{
    SnackBar(
            content: Text('No Available Roles'),
            backgroundColor: Colors.green,
          );
}
}


}