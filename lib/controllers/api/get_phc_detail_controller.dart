import 'package:dio/dio.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/state_manager.dart';
import 'package:qhance_uiii/controllers/api/login_controller.dart';
import 'package:qhance_uiii/model/phc_details_model.dart';
import 'package:qhance_uiii/utils/api_configs.dart';
import 'package:qhance_uiii/utils/api_provider.dart';


// This api called in Mobile screen reception activities
class GetPhcDetailsController extends GetxController {

  RxBool isLoading = true.obs;

 GetPhcDetailModel? model;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
           var authid = Get.find<LoginController>().authid;
    getPhcDetails(authid);
  }

  getPhcDetails(userid) async {
   try{ 
    isLoading(true);
    var url = AppConstants.baseUrl + '/api/getPhcDetails/$userid';
    Response response = await ApiProvider().get(url);
    print('phc details response ============> $response');
    if (response.statusCode == 200 &&  response.data["SuccessResponse"]['statusCode']==true) {
          isLoading(false);
    model = GetPhcDetailModel.fromJson(response.data);
     
      
    }else{
      response.statusMessage;
    }
  }catch(e){
throw Exception(e);
  }
}

}