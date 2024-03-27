import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:qhance_uiii/Screens/page8.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qhance_uiii/controllers/api/get_phc_detail_controller.dart';
import 'package:qhance_uiii/controllers/api/get_zone_controller.dart';
import 'package:qhance_uiii/controllers/api/login_controller.dart';
import 'package:qhance_uiii/main.dart';
import 'package:qhance_uiii/utils/shared_data.dart';

import '../helper/colors.dart';

class page2 extends StatelessWidget {
 page2({super.key});
GetZoneController zoneController = Get.put(GetZoneController());
 GetPhcDetailsController controller = Get.put(GetPhcDetailsController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              backgroundColor: myColor,
              title: Text(
                "Zones",
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(15), color: Colors.white),
              ),
              actions: [
                Row(
                  children: [
                Image.asset('assets/go.png',height: 25,),
                    SizedBox(width: ScreenUtil().setWidth(10))
                  ],
                )
              ],
            ),
            backgroundColor: background,
            body: SizedBox(
              width: size.width,
              height: size.height,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("Select Your Zone",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey.shade800),),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15,top: 30),
                      child: Obx(()=>
                                       GridView.builder(
                           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1,
                                crossAxisCount: 2, // Number of columns
                                crossAxisSpacing: 20.0, // Spacing between columns
                                mainAxisSpacing: 20.0, // Spacing between rows
                              ),
                          itemCount:zoneController.zoneList.length,
                          itemBuilder: (context, index) => InkWell(
                            onTap: ()async {
                          
                              controller.getPhcDetails( zoneController.zoneList[index].id);
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => page8()));
                            },
                            child: Container(
                              width: ScreenUtil().setWidth(143.23),
                              height: ScreenUtil().setHeight(143.23),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: myColor, width: ScreenUtil().setWidth(1.5)),
                                borderRadius:
                                    BorderRadius.circular(ScreenUtil().setWidth(15)),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color.fromRGBO(0, 0, 0, 0.25),
                                    offset: Offset(0, ScreenUtil().setHeight(4)),
                                    blurRadius: ScreenUtil().setHeight(2),
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                       zoneController.zoneList[index].zoneName.toString()??"No Zones Found",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: myColor,
                                        fontFamily: 'Inter',
                                        fontSize: ScreenUtil().setSp(18),
                                        letterSpacing: ScreenUtil().setSp(2),
                                        fontWeight: FontWeight.w700,
                                        height: ScreenUtil().setHeight(1),
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                     Text(
                                  'Zone',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: myColor,
                                    fontFamily: 'Inter',
                                    fontSize: ScreenUtil().setSp(18),
                                    letterSpacing: ScreenUtil().setSp(2),
                                    fontWeight: FontWeight.w700,
                                    height: ScreenUtil().setHeight(1),
                                  ),
                                ),
                                  ],
                                ),
                               
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
