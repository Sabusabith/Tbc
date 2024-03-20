import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qhance_uiii/Screens/page7.dart';
import 'package:qhance_uiii/controllers/api/login_controller.dart';
import 'package:qhance_uiii/utils/toast.dart';

import '../helper/colors.dart';

class login extends StatelessWidget {
  login({super.key});

  LoginController controller = Get.put(LoginController());
  

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: ScreenUtil().setHeight(153),
              ),
              Row(
                children: [
                  SizedBox(
                    width: ScreenUtil().setWidth(160),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(54),
                    height: ScreenUtil().setWidth(54),
                    child: Image.asset("assets/Vector.png"),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil().setHeight(7),
              ),
              Row(
                children: [
                  SizedBox(
                    width: ScreenUtil().setWidth(153),
                  ),
                  Text(
                    "Log in",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: ScreenUtil().setSp(22),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil().setHeight(65),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  elevation: 5, // Adjust the elevation as needed
                  shadowColor: Colors.white, // Set the shadow color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: SizedBox(
                    height: ScreenUtil().setHeight(57),
                    width: ScreenUtil().setWidth(335),
                    child: TextFormField(
                      controller: controller.emailController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: myColor,
                        ),
                        filled: true,
                        fillColor: textfieldform,
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.white70),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 13, vertical: 25),
                        hintText: "Enter Your Id",
                        hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      style: const TextStyle(color: Colors.black87),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  elevation: 5, // Adjust the elevation as needed
                  shadowColor: Colors.white, // Set the shadow color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),

                  child: SizedBox(
                    height: ScreenUtil().setHeight(57),
                    width: ScreenUtil().setWidth(335),
                    child: TextFormField(
                      controller: controller.passController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: myColor,
                        ),
                        filled: true,
                        fillColor: textfieldform,
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.white70),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 13, vertical: 25),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      style: const TextStyle(color: Colors.black87),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(45),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(59),
                width: ScreenUtil().setWidth(335),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: myColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15.0), // Set the button border radius
                      ),
                    ),
                    onPressed: () async {
                      FocusScope.of(context).requestFocus(FocusNode());
                      await _login(context);
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(16),
                          color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //pass login data
_login(BuildContext context ) {
  String email = controller.emailController.value.text;
  String password = controller.passController.value.text;
  String errorMessage = '';

  if (email.isEmpty && password.isEmpty) {
    errorMessage = 'Please enter your email and password';
  } else if (email.isEmpty) {
    errorMessage = 'Please enter your email';
  } else if (password.isEmpty) {
    errorMessage = 'Please enter your password';
  } else {
    // No errors, proceed with login
    controller.login(context);
    return;
  }
customSnackBar(errorMessage,errorMessage, context);
  // Display error message
  print(errorMessage);
  // Optionally, you can show a toast or alert here instead of printing to the console.
}
}
