import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:qhance_uiii/Screens/type1/zones1.dart';
import 'package:qhance_uiii/Screens/type2/controller/getAllUsersController.dart';

import 'package:qhance_uiii/utils/shared_data.dart';
import 'package:qhance_uiii/utils/toast.dart';
import 'package:qhance_uiii/utils/api_configs.dart';
import 'package:qhance_uiii/utils/api_provider.dart';
import 'package:qhance_uiii/Screens/type2/Zones_2.dart';
import 'package:qhance_uiii/Screens/type3/users.dart';
import 'package:qhance_uiii/Screens/type3/controller/get_user_controller.dart';
import 'package:qhance_uiii/model/login_model.dart';

class LoginController extends GetxController {
  final GetUserssController controller = Get.put(GetUserssController());
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  var authId;
  var phcTbcCode;
  var apiToken;

  Future<void> login(BuildContext context) async {
    var url = AppConstants.baseUrl + AppConstants.login;
    FormData data = FormData.fromMap({
      "email": emailController.text,
      "password": passController.text,
    });

    try {
      Response response = await ApiProvider().post(url, data);
      print("Login Data: ${response.data}");

      final responseData = response.data;
      final bool success = responseData["success"] ?? false;

      if (success) {
        final dynamic messageData = responseData['message'];
        if (messageData is Map<String, dynamic>) {
          final String userType = messageData['user_type'];
          if (userType == 'Type 1') {
            final LoginModel loginModel = LoginModel.fromJson(responseData);
            saveObject("token", loginModel.apiToken);
            saveObject('type', loginModel.message.userType);
              customSnackBar("Login success", "Login success", context,
                isError: false);
                Get.to(Zones1());
          } else if (userType == 'Type 2') {
            final LoginModel loginModel = LoginModel.fromJson(responseData);
            saveObject("token", loginModel.apiToken);
            saveObject('type', loginModel.message.userType);
            customSnackBar("Login success", "Login success", context,
                isError: false);
              
            Get.to(Zones());
          } else if (userType == 'Type 3') {
            final LoginModel loginModel = LoginModel.fromJson(responseData);
            saveObject('type', loginModel.message.userType);
            saveObject("token", loginModel.apiToken);
            saveObject(
                "phc", loginModel.message.userDetail?.first.phcTbcCodeId);
            authId = loginModel.message.id;
            saveObject("phcdetailid",
                loginModel.message.userDetail?.first.phcDetailId);
            saveObject("id", authId);
            phcTbcCode = loginModel.message.userDetail?.first.phcTbcCodeId;
            saveObject('phctbccodeid', phcTbcCode);
            apiToken = loginModel.apiToken;
            customSnackBar("Login success", "Login success", context,
                isError: false);
            await controller.getUsersFromApi(phcTbcCode);
            Get.to(Users());
          } else {
            customSnackBar("Login failed", "Unknown user type", context);
          }
        } else {
          customSnackBar("Login failed", "Invalid response format", context);
        }
      } else {
        final String errorMessage =
            responseData["message"] ?? "Unknown error occurred";
        customSnackBar("Login failed", errorMessage, context);
      }
    } catch (e) {
      print("Exception occurred during login: $e");
      customSnackBar("Login failed",
          "An error occurred. Please try again later.", context);
    }
  }
}
