import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:qhance_uiii/Screens/type2/model/getAllUsersModel.dart';
import 'package:qhance_uiii/utils/api_provider.dart';

import '../../../utils/shared_data.dart';

class GetAllUsersController extends GetxController{
@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getAllusers();
  }
  RxBool isloading = true.obs;
GetAllUsersModel?model;
getAllusers()async{
isloading(true);
var url = "https://tbc.d-note.com/api/getAllUsers";
 var token = await getSavedObject('token');
var response = await ApiProvider().get(url,token: token);

if (response.statusCode == 200 &&
        response.data["SuccessResponse"]['statusCode'] == true) {
          isloading(false);
   model = GetAllUsersModel.fromJson(response.data);

   print(model?.successResponse?.data?[0].email);
}else{
      Get.snackbar("Server down....", '');

}




}



}