import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qhance_uiii/Screens/page1.dart';
import 'package:qhance_uiii/Screens/page7.dart';
import 'package:qhance_uiii/main.dart';

Color background = Color(0xFFFAFAFA);
Color textfieldform = Color(0xFFFFFFFF);

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
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
                  Container(
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
                  child: Container(
                    height: ScreenUtil().setHeight(57),
                    width: ScreenUtil().setWidth(335),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: myColor,
                        ),
                        filled: true,
                        fillColor: textfieldform,
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.white70),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 13, vertical: 25),
                        hintText: "Enter Your Id",
                        hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      style: TextStyle(color: Colors.black87),
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

                  child: Container(
                    height: ScreenUtil().setHeight(57),
                    width: ScreenUtil().setWidth(335),
                    child: TextFormField(
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
                              BorderSide(width: 1, color: Colors.white70),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 13, vertical: 25),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(45),),
              Container(
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
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => page7()));
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
}
