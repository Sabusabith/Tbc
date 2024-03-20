

import 'package:dio/dio.dart';


import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:qhance_uiii/controllers/api/login_controller.dart';
import 'package:qhance_uiii/model/get_users_model.dart';
import 'package:qhance_uiii/utils/api_configs.dart';
import 'package:qhance_uiii/utils/api_provider.dart';

import '../../utils/toast.dart';

class GetUserssController extends GetxController{
 GetUsersModel? usersModel;

@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
//       var tbc = Get.find<LoginController>().authid;
//        var authid = Get.find<LoginController>().authid;
      
// getUsersFromApi(tbc,authid);
   
  }
 

getUsersFromApi(tbc,authid)async{
  try{
 var url  =  AppConstants.baseUrl + '/api/getUsersFromCode/$tbc/$authid';

 Response response = await ApiProvider().get(url);
 if (response.statusCode == 200  && response.data["SuccessResponse"]['statusCode']==true) {
usersModel = GetUsersModel.fromJson(response.data);
 }else{
 
 Get.snackbar("Oooops...", "server down..!");
 }



}catch(e){
  throw  Exception(e);
}




}
}