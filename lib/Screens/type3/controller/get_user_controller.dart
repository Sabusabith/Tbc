

import 'package:get/get.dart';
import 'package:qhance_uiii/Screens/type3/model/get_users_model.dart';
import 'package:qhance_uiii/Screens/type3/users.dart';
import 'package:qhance_uiii/utils/api_provider.dart';
import 'package:qhance_uiii/utils/shared_data.dart';

class GetUserssController extends GetxController{
  
 GetUsersModel? usersModel;

@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

 
  }
 RxBool isloading = true.obs;


getUsersFromApi(phc)async{
  isloading(true);
  var token = await getSavedObject('token');
     print('user  details controller apitoken :${token}');
  try{
 var url  =  'https://tbc.d-note.com/api/getUsersFromCode?$phc';
  Map<String, String> queryParams = {
      'tbc_code_id': phc.toString(),
     
    };


 var response = await ApiProvider().get(url,token: token,queryParams: queryParams);



 if (response.statusCode == 200  && response.data["SuccessResponse"]['statusCode']==true) {
  
  
  isloading(false);
usersModel = GetUsersModel.fromJson(response.data);
print('userDetails : ${usersModel?.successResponse.data[0].zoneId}}');

await Get.to(Users());
 }else{
 
 Get.snackbar("Oooops...", "server down..!");
 
 }



}catch(e){
  throw  Exception(e);
}




}
}