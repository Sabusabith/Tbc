import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:qhance_uiii/Screens/login.dart';
import 'package:qhance_uiii/Screens/type3/domains3.dart';
import 'package:qhance_uiii/Screens/type3/controller/get_Domain_fromPHc_controller.dart';
import 'package:qhance_uiii/Screens/type3/controller/get_user_controller.dart';
import 'package:qhance_uiii/controllers/api/login_controller.dart';
import 'package:qhance_uiii/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qhance_uiii/widgets/container_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qhance_uiii/widgets/primary_container_widget.dart';

import '../../helper/colors.dart';
import '../../utils/shared_data.dart';

class Users extends StatelessWidget {
  Users({super.key});
  GetUserssController userController = Get.put(GetUserssController());
    DateTime? currentBackPressTime; // Declare currentBackPressTime variable
GetDomainFromPHCcontroller ccontroller = Get.put(GetDomainFromPHCcontroller());
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop: () async {
        // Handle double back press here
        // You can customize this behavior as per your requirement
        return _onBackPressed(context);
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: myColor,
          leading: SizedBox(),
          leadingWidth: 20,
          title: Text(
            "Primary Health Care",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () async {
                var phcdetailid = await getSavedObject("phcdetailid");
          ccontroller.getDomains(phcdetailid);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Domains3()));
              },
              icon:  Image.asset('assets/go.png',height: 25,),
            ),
               InkWell(onTap: () {
           showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(backgroundColor: Colors.white,
                      title: Text("Logout",style: TextStyle(color: Colors.grey.shade800),),
                      content: Text("Do you want to logout?",style: TextStyle(color: Colors.grey.shade800)),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Close dialog
                          },
                          child: Text("Cancel",style: TextStyle(color: myColor),),
                        ),
                        TextButton(
                          onPressed: ()async {
                      await clearSavedObject('token');
          await clearSavedObject('type');
        await clearSavedObject('phc');
                      Get.offAll(login());
                          },
                          child: Text("Logout",style: TextStyle(color: myColor)),
                        ),
                      ],
                    );
                  },
                );
           
         },child: Icon(Icons.power_settings_new_outlined,color: Colors.white,size: 30,)),
         SizedBox(width: 15,),
          ],
        ),
        backgroundColor: background,
        body: SafeArea(
          child: Obx(() => userController.isloading.value
              ? Center(child: CircularProgressIndicator(color: Colors.green))
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: ScreenUtil().setHeight(30)),
                      Row(
                        children: [
                          SizedBox(width: ScreenUtil().setWidth(15)),
                          customcontainer(
                            text3: "care code",
                            text4: userController.usersModel?.successResponse
                                .data[0].tbcCode
                                .toString()??'No Code',
                            borderRadius: ScreenUtil().setWidth(13),
                            Bordercolor: Colors.black,
                            text: userController.usersModel?.successResponse
                                    .data[0].zone.zoneName
                                    .toString() ??
                                'No Data',
                            text1: "Primary Health Care Name",
                            textColor: Colors.black,
                            text1Color: Colors.grey,
                            width: ScreenUtil().setWidth(333),
                            height: ScreenUtil().setHeight(80),
                          ),
                        ],
                      ),
                      SizedBox(height: ScreenUtil().setHeight(21)),
                      Row(
                        children: [
                          SizedBox(width: ScreenUtil().setWidth(21)),
                          Text(
                            "Team Members",
                            style: GoogleFonts.inter(
                              fontSize: ScreenUtil().setSp(15),
                              fontWeight: FontWeight.w600,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: ScreenUtil().setHeight(25)),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: ListView.builder(
                          itemCount: userController.usersModel!.successResponse
                              .data[0].userDetail.length,
                          itemBuilder: (context, index) => Column(
                            children: [
                              SizedBox(height: 10),
                              Card(
                                color: Colors.white,
                                elevation: 2,
                                // Adjust the elevation as needed
                                shadowColor: Colors.grey,
                                // Set the shadow color
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
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(width: ScreenUtil().setWidth(14)),
                                      const CircleAvatar(
                                        backgroundImage:
                                            AssetImage("assets/face4.jpg"),
                                        radius: 30,
                                      ),
                                      SizedBox(width: ScreenUtil().setWidth(19)),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                              height:
                                                  ScreenUtil().setHeight(15)),
                                          Container(
                                            width: 150,
                                            child: Text(
                                              userController
                                                      .usersModel!.successResponse
                                                      .data[0]
                                                      .userDetail[index]
                                                      .user?.name
                                                      .toString() ??
                                                  'No Data',
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w700,
                                                overflow: TextOverflow.ellipsis,
                                                fontSize: 17,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: ScreenUtil().setHeight(5),
                                          ),
                                          Text(
                                            userController
                                                    .usersModel!.successResponse
                                                    .data[0]
                                                    .userDetail[index]
                                                    .specialization?.speciality
                                                    .toString() ??
                                                "Spatiality",
                                            style: TextStyle(
                                              overflow: TextOverflow.ellipsis,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Colors.black87,
                                            ),
                                          ),
                                          SizedBox(
                                            height: ScreenUtil().setHeight(6),
                                          ),
                                          Expanded(
                                            child: Text(
                                              "+91 9895957143 ",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                overflow: TextOverflow.ellipsis,
                                                color: Colors.black87,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          SizedBox(
                                            height: ScreenUtil().setHeight(16),
                                          ),
                                          Text(
                                            "Role",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              color: Colors.black87,
                                            ),
                                          ),
                                          SizedBox(
                                            height: ScreenUtil().setHeight(5),
                                          ),
                                          Text(
                                            userController
                                                    .usersModel?.successResponse
                                                    .data[0]
                                                    .userDetail[index]
                                                    .role.roleName
                                                    .toString() ??
                                                'No Roll',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              color: Colors.black87,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 5),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
        ),
      ),
    );
  }
Future<bool> _onBackPressed(BuildContext context) async {
  // Function to handle double back press
  // Customize this behavior as per your requirement
  DateTime now = DateTime.now();
  if (currentBackPressTime == null ||
      now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
    currentBackPressTime = now;
    ShowToast("Press again to exit");
    return Future.value(false);
  }
  // Close the app when back pressed twice
  SystemNavigator.pop();
  return Future.value(true);
}

}