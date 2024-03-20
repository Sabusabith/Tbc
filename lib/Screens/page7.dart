import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:qhance_uiii/Screens/page2.dart';
import 'package:qhance_uiii/controllers/api/login_controller.dart';
import 'package:qhance_uiii/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qhance_uiii/widgets/container_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qhance_uiii/widgets/primary_container_widget.dart';

import '../controllers/api/get_zone_controller.dart';
import '../helper/colors.dart';

class page7 extends StatelessWidget {
 page7({super.key});
GetZoneController controller = Get.put(GetZoneController());

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: myColor,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text(
            "Primary Health Care",
            style: GoogleFonts.poppins(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: ()async{
                     var authid = await Get.find<LoginController>().authid;
                  controller.getZones(authid);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> page2()));
              },
              icon:
              const Icon(
                Icons.logout,
                color: Colors.white,
              ),
            )
          ],
        ),
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: ScreenUtil().setHeight(30),
              ),
              Row(
                children: [
                  SizedBox(
                    width: ScreenUtil().setWidth(15),
                  ),
                  customcontainer(
                    text3: "care code",
                    borderRadius: ScreenUtil().setWidth(13),
                    Bordercolor: Colors.black,
                    text: "Health Zone Name",
                    text1: "Primary Health Care Name",
                    textColor: Colors.black,
                    text1Color: Colors.grey,
                    width: ScreenUtil().setWidth(333),
                    height: ScreenUtil().setHeight(80),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil().setHeight(21),
              ),
              Row(
                children: [
                  SizedBox(
                    width: ScreenUtil().setWidth(21),
                  ),
                  Text(
                    "Team Members",
                    style: GoogleFonts.inter(
                        fontSize: ScreenUtil().setSp(15),
                        fontWeight: FontWeight.w600,
                        color: Colors.black54),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil().setHeight(25),
              ),
              Card(
                color: Colors.white,
                elevation: 2, // Adjust the elevation as needed
                shadowColor: Colors.grey, // Set the shadow color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9.0),
                ),
                child: Container(
                  width: ScreenUtil().setWidth(333),
                  height: ScreenUtil().setHeight(95),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.white,
                      )),
                  child: Row(
                    children: [
                      SizedBox(
                        width: ScreenUtil().setWidth(14),
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage("assets/face4.jpg"),
                        radius: 30,
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(19),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: ScreenUtil().setHeight(15),
                          ),

                          const Text(
                            "Person name",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 17,
                                color: Colors.black),
                          ),

                          SizedBox(
                            height: ScreenUtil().setHeight(5),
                          ),
                          const Text("Speciality                ",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.black87),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(6),
                          ),
                          const Text("+91 9895957143 ",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.black87),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(90),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: ScreenUtil().setHeight(16),
                          ),
                          const Text("Role",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.black87),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(5),
                          ),

                        ],
                      ),




                    ],
                  ),
                
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(25),
              ),
              Card(
                color: Colors.white,
                elevation: 2, // Adjust the elevation as needed
                shadowColor: Colors.grey, // Set the shadow color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  width: ScreenUtil().setWidth(333),
                  height: ScreenUtil().setHeight(95),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.white,
                      )),
                  child: Row(
                    children: [
                      SizedBox(
                        width: ScreenUtil().setWidth(14),
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage("assets/face2.jpg"),
                        radius: 30,
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(19),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: ScreenUtil().setHeight(15),
                          ),

                          const Text(
                            "Person name",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 17,
                                color: Colors.black),
                          ),

                          SizedBox(
                            height: ScreenUtil().setHeight(5),
                          ),
                          const Text("Speciality                ",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.black87),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(6),
                          ),
                          const Text("+91 9895957143 ",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.black87),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(90),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: ScreenUtil().setHeight(16),
                          ),
                          const Text("Role",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.black87),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(5),
                          ),

                        ],
                      ),




                    ],
                  ),

                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(25),
              ),
              Card(
                color: Colors.white,
                elevation: 2, // Adjust the elevation as needed
                shadowColor: Colors.grey, // Set the shadow color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  width: ScreenUtil().setWidth(333),
                  height: ScreenUtil().setHeight(95),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.white,
                      )),
                  child: Row(
                    children: [
                      SizedBox(
                        width: ScreenUtil().setWidth(14),
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage("assets/face4.jpg"),
                        radius: 30,
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(19),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: ScreenUtil().setHeight(15),
                          ),

                          const Text(
                            "Person name",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 17,
                                color: Colors.black),
                          ),

                          SizedBox(
                            height: ScreenUtil().setHeight(5),
                          ),
                          const Text("Speciality                ",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.black87),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(6),
                          ),
                          const Text("+91 9895957143 ",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.black87),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(90),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: ScreenUtil().setHeight(16),
                          ),
                          const Text("Role",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.black87),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(5),
                          ),

                        ],
                      ),




                    ],
                  ),

                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(25),
              ),
              Card(
                color: Colors.white,
                elevation: 2, // Adjust the elevation as needed
                shadowColor: Colors.grey, // Set the shadow color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9.0),
                ),
                child: Container(
                  width: ScreenUtil().setWidth(333),
                  height: ScreenUtil().setHeight(95),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.white,
                      )),
                  child: Row(
                    children: [
                      SizedBox(
                        width: ScreenUtil().setWidth(14),
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage("assets/face2.jpg"),
                        radius: 30,
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(19),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: ScreenUtil().setHeight(15),
                          ),

                          const Text(
                            "Person name",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 17,
                                color: Colors.black),
                          ),

                          SizedBox(
                            height: ScreenUtil().setHeight(5),
                          ),
                          const Text("Speciality                ",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.black87),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(6),
                          ),
                          const Text("+91 9895957143 ",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.black87),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(90),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: ScreenUtil().setHeight(16),
                          ),
                          const Text("Role",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.black87),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(5),
                          ),

                        ],
                      ),




                    ],
                  ),

                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(25),
              ),
              Card(
                color: Colors.white,
                elevation: 2, // Adjust the elevation as needed
                shadowColor: Colors.grey, // Set the shadow color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  width: ScreenUtil().setWidth(333),
                  height: ScreenUtil().setHeight(95),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.white,
                      )),
                  child: Row(
                    children: [
                      SizedBox(
                        width: ScreenUtil().setWidth(14),
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage("assets/face4.jpg"),
                        radius: 30,
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(19),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: ScreenUtil().setHeight(15),
                          ),

                          const Text(
                            "Person name",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 17,
                                color: Colors.black),
                          ),

                          SizedBox(
                            height: ScreenUtil().setHeight(5),
                          ),
                          const Text("Speciality                ",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.black87),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(6),
                          ),
                          const Text("+91 9895957143 ",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.black87),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(90),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: ScreenUtil().setHeight(16),
                          ),
                          const Text("Role",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.black87),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(5),
                          ),

                        ],
                      ),




                    ],
                  ),

                ),
              )












            ],
          ),
        ),
      ),
    );
  }
}
