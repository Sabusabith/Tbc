import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:qhance_uiii/model/type3/getActionPlan_model.dart';

import '../../../utils/api_provider.dart';
import '../../../utils/shared_data.dart';

class GetActionPlanController extends GetxController{
RxBool isloading = true.obs;
GetActionPlanModel? model;
getActionplan(phcid)async{
  try{

  isloading(true);
  var token = await getSavedObject('token');

var url = 'https://tbc.d-note.com/api/getAllActionPlanForPhc?';

  Map<String, String> queryParams = {
      'phc_detail_id': phcid.toString(),

     
    };
     var response = await ApiProvider().get(url,token: token,queryParams: queryParams);

      if (response.statusCode == 200  && response.data["SuccessResponse"]['statusCode']==true) {
          isloading(false);
        model = GetActionPlanModel.fromJson(response.data);
        print("Action Plan datas ::::   ${model?.successResponse.data?[0].actionPlan}");
      }else{
         SnackBar(
            content: Text('Something error!'),
            backgroundColor: Colors.green,
          );
        
      }
}catch(e){
throw Exception(e);
}


}}