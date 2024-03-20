import 'package:flutter/material.dart';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:qhance_uiii/Screens/page7.dart';
import 'package:qhance_uiii/model/login_model.dart';
import 'package:qhance_uiii/utils/api_configs.dart';
import 'package:qhance_uiii/utils/api_provider.dart';
import 'package:dio/dio.dart';
import 'package:qhance_uiii/utils/toast.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
    var authid;
  Future<void> login(BuildContext context) async {

    var url = AppConstants.baseUrl + AppConstants.login;
    FormData data = FormData.fromMap(
        {"email": emailController.text, "password": passController.text});
    try {
      Response response = await ApiProvider().post(url, data);

      if (response.statusCode == 200 && response.data["success"] == true) {
        LoginModel loginModel = LoginModel.fromJson(response.data);
        authid = loginModel.message.id;

        customSnackBar("Login success", "Login success", context,
            isError: false);

        Get.to(page7());

        print("login response ======> ${loginModel.message.id}");
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
