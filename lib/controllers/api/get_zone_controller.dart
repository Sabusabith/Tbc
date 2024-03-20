
import 'package:dio/dio.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/state_manager.dart';
import 'package:qhance_uiii/controllers/api/login_controller.dart';
import 'package:qhance_uiii/model/zoneModel.dart';
import 'package:qhance_uiii/utils/api_configs.dart';
import 'package:qhance_uiii/utils/api_provider.dart';


// This api called in mobile screen Southern zones Domains
class GetZoneController extends GetxController{
  
   @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
       var authid = Get.find<LoginController>().authid;
    getZones(authid);
  }
  RxList<Datum> zoneList = <Datum>[].obs;

    getZones(authid)async{
try{
    var url = AppConstants.baseUrl + '/api/getZone/$authid';

    Response response = await ApiProvider().get(url);
   
    if (response.statusCode == 200 && response.data["SuccessResponse"]['statusCode']==true) {
  ZoneModel zoneModel = ZoneModel.fromJson(response.data);
      zoneList = zoneModel.successResponse.data.obs; 
     

    }else{
      return 'No Zones Found';
    }

  }catch(e){
    throw Exception(e);
  }
    }
 

}