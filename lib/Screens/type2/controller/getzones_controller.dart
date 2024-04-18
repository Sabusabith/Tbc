import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:qhance_uiii/Screens/type2/model/getzones_model.dart';
import 'package:qhance_uiii/utils/api_provider.dart';

import '../../../utils/shared_data.dart';

class GetZonesController extends GetxController {

 
  RxBool isloading = true.obs;
   Future<GetZoneModel> getZones() async {
    try{
    var url = "https://tbc.d-note.com/api/getZone";
 var token = await getSavedObject('token');

    var response =  await ApiProvider().get(url, token: token);
    if (response.statusCode == 200 &&
        response.data["SuccessResponse"]['statusCode'] == true) {

   return GetZoneModel.fromJson(response.data);

        }else{
                  throw Exception('Failed to fetch zones: ${response.statusCode}');

        }
  }catch(e){
    throw Exception(e);
  }
}
}