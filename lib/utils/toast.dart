import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

void customSnackBar(String? message,String? message2,BuildContext context, {bool isError = true, } ) {
  if(message != null  &&  message2 != null) {
    Get.showSnackbar(GetSnackBar(
      backgroundColor: (isError ? Colors.red : Colors.green),
      message:  message,
      messageText: Text(message2),
      
      maxWidth: MediaQuery.of(context).size.width/1.2,
      duration: Duration(seconds: 2),
      snackStyle: SnackStyle.FLOATING,
      margin: EdgeInsets.only(
          top: 10,
          left:10,
          bottom: 10,
          right: 10,),
      borderRadius: 10,
      isDismissible: true,
      dismissDirection: DismissDirection.horizontal,
    ));
  }
}