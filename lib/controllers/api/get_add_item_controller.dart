
import 'package:dio/dio.dart';


import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:qhance_uiii/controllers/api/login_controller.dart';
import 'package:qhance_uiii/utils/api_configs.dart';
import 'package:qhance_uiii/utils/api_provider.dart';

import '../../model/getAdd_item_model.dart';

class GetAddItemController extends GetxController{
  
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
   
  }
  GetAddItemModel? itemModel;
  int? pervisite;
  int selectedValue = 1 ;
 getItems(authid)async{
  var url = AppConstants.baseUrl + '/api/getTaskDetails/$authid';

   Response response = await ApiProvider().get(url);
   if (response.statusCode == 200 && response.data["SuccessResponse"]['statusCode']==true) {
   
      
      itemModel =  GetAddItemModel.fromJson(response.data);
    pervisite  =  itemModel?.successResponse.data[0].perVisit;
    print("items details = ${pervisite}");
      selectedValue = pervisite??1;



   }
 }


}
