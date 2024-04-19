import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:qhance_uiii/Screens/type2/model/addUsder_model.dart';
import 'package:qhance_uiii/utils/api_provider.dart';
import 'package:qhance_uiii/utils/shared_data.dart';

class AddUserController1 extends GetxController {
  addUserData(BuildContext context, Map data) async {
    AddUserModel? model;
    var url = "https://tbc.d-note.com/api/addUser";
    var token = await getSavedObject('token');
    FormData formData = FormData.fromMap({
      'name': data['name'],
      'email': data['email'],
      'password': data['password'],
      'phone': data['phone'],
      'status': data['status'],
      'type': data['type'],
      'specialization_id': data['specialization_id'],
      'phc_detail_id': data['phc_detail_id'],
      'phc_tbc_code_id': data['phc_tbc_code_id']
    });

    try {
      Response response = await ApiProvider().post(url, formData, token: token);
      if (response.statusCode == 200 && response.data['status'] == false) {
        if (response.data['message']['original'].containsKey('name')) {
          String errorMessage = response.data['message']['original']['name'][0];
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(errorMessage),
              backgroundColor: Colors.red,
            ),
          );
        } else if (response.data['message']['original'].containsKey('type')) {
          String errorMessage = response.data['message']['original']['type'][0];

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(errorMessage),
              backgroundColor: Colors.red,
            ),
          );
        } else if (response.data['message']['original']
            .containsKey('password')) {
          String errorMessage =
              response.data['message']['original']['password'][0];
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(errorMessage),
              backgroundColor: Colors.red,
            ),
          );
        } else if (response.data['message']['original'].containsKey('email')) {
          String errorMessage =
              response.data['message']['original']['email'][0];
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(errorMessage),
              backgroundColor: Colors.red,
            ),
          );
        }
      } else if (response.statusCode == 200 &&
          response.data["SuccessResponse"]['statusCode'] == true) {
        model = AddUserModel.fromJson(response.data);
        print("Adduser message : ${model.successResponse.message}");
        String? successMessage = model.successResponse.message;

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
                successMessage ?? model.successResponse.message.toString()),
            backgroundColor: Colors.green,
          ),
        );
            Get.back();
      } else {
        // Handle other cases
      }
    } catch (error) {
      print("Error: $error");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("An error occurred. Please try again."),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
