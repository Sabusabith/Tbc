import 'package:flutter/material.dart';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:qhance_uiii/Screens/page7.dart';
import 'package:qhance_uiii/controllers/api/get_user_controller.dart';
import 'package:qhance_uiii/model/login_model.dart';
import 'package:qhance_uiii/utils/api_configs.dart';
import 'package:qhance_uiii/utils/api_provider.dart';
import 'package:dio/dio.dart';
import 'package:qhance_uiii/utils/shared_data.dart';
import 'package:qhance_uiii/utils/toast.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LoginController extends GetxController {
 GetUserssController controller = Get.put(GetUserssController());
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
    var authid;
    var phcTbccode;
    var apitoken;
  Future<void> login(BuildContext context) async {

    var url = AppConstants.baseUrl + AppConstants.login;
    FormData data = FormData.fromMap(
        {"email": emailController.text, "password": passController.text});
    try {
      Response response = await ApiProvider().post(url, data,);

      if (response.statusCode == 200 && response.data["success"] == true) {
        LoginModel loginModel = LoginModel.fromJson(response.data);
        saveObject("token", loginModel.apiToken);
           
           saveObject("phc", loginModel.message.userDetail[0].phcTbcCodeId);
           print('login token :${loginModel.apiToken}');
        authid = loginModel.message.id;
         saveObject("id", authid);
        phcTbccode = loginModel.message.userDetail[0].phcTbcCodeId;
       apitoken =  loginModel.apiToken;
         customSnackBar("Login success", "Login success", context,
            isError: false);
        await controller.getUsersFromApi(phcTbccode);
      
              // Get.find<GetUserssController>().getUsersFromApi(authid, phcTbccode);
         
      
     // Call GetUsersController after successful login
        Get.to(page7());

      } else if (response.statusCode == 200 &&
          response.data["success"] == false) {
        print(response.data["message"]);

        customSnackBar(
            response.data["message"], response.data["message"], context);
      } else {
        customSnackBar(
            response.data["message"], response.data["message"], context);

        print(response.data["message"]);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
