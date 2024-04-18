import 'package:dio/dio.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:qhance_uiii/Screens/type2/model/getSpecialization_model.dart';
import 'package:qhance_uiii/utils/api_provider.dart';

import '../../../utils/shared_data.dart';

class GetSpecializationController extends GetxController{
@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getData();
  }
GetSpecializationModel? model;

getData()async{

try{

   var url = "https://tbc.d-note.com/api/getSpecialization";
 var token = await getSavedObject('token');
    Response response = await ApiProvider().get(url,token: token);

    if (response.statusCode == 200 && response.data["SuccessResponse"]['statusCode'] == true) {
      model = GetSpecializationModel.fromJson(response.data);
      print("Specialization id : ${model?.successResponse.data[0].id}");
    }else{
       throw Exception('Failed to fetch id : ${response.statusCode}');

    }
}
catch(e){
throw Exception(e);
}

}}