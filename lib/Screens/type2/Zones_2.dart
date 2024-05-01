import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qhance_uiii/Screens/login.dart';
import 'package:qhance_uiii/Screens/splash.dart';
import 'package:qhance_uiii/Screens/type2/controller/get_specialization_controller.dart';
import 'package:qhance_uiii/Screens/type2/controller/getzones_controller.dart';
import 'package:qhance_uiii/Screens/type2/phc_zones.dart';

import '../../helper/colors.dart';
import '../../utils/shared_data.dart';
import 'model/getzones_model.dart';



class Zones extends StatelessWidget {
      DateTime? currentBackPressTime; // Declare currentBackPressTime variable

  GetZonesController controller = GetZonesController();
  GetSpecializationController specializationController = Get.put(GetSpecializationController());
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return 
        WillPopScope(

           onWillPop: () async {
        // Handle double back press here
        // You can customize this behavior as per your requirement
        return _onBackPressed(context);
      },
          child: Scaffold(
                    appBar: AppBar(
          actions: [
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
                  Get.offAll(() => login());
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
          leading: SizedBox(),
          leadingWidth: 15,
          backgroundColor: myColor,
          title: Text(
            "Zones",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
                    ),
                    backgroundColor: background,
                    body: SafeArea(
                      child: SizedBox(
                              width: size.width,
                              height: size.height,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Text(
                                      "Select Your Zones",
                                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 30),
                                      child:Center(
                      child: FutureBuilder<GetZoneModel>(
                                future: controller.getZones(),
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState == ConnectionState.waiting) {
                                    return CircularProgressIndicator(color: myColor,);
                                  } else if (snapshot.hasError) {
                                    return Text('Error: ${snapshot.error}');
                                  } else {
                                   var data = snapshot.data!;
                                    // Now you can use the data to populate your UI
                                
                                    return GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1,
                          crossAxisCount: 2, // Number of columns
                          crossAxisSpacing: 20.0, // Spacing between columns
                          mainAxisSpacing:
                              20.0, // Spacing between rows Spacing between rows
                        ),
                        itemCount: data.successResponse.data.length,
                        itemBuilder: (context, index) => InkWell(
                          onTap: () async {
                                  var selectedPhcDetail = data.successResponse.data[index].phcDetail;
                                 
                                   // Print all data from selectedPhcDetail using a for loop
                                // for (var phcDetail in selectedPhcDetail??[]) {
                                //   for (var phcTbcCode in phcDetail.phcTbcCode ?? []) {
                                //     print("tbcCode: ${phcTbcCode.tbcCode}");
                                //     print("id: ${phcTbcCode.id}");
                                //     // Print other fields as needed
                                //   }
                                // }
                              
                            Get.to(PhcZones(zoneName:data.successResponse.data[index].zoneName.toString(), phcDetailList: selectedPhcDetail ,));
                          },
                          child: Container(
                            width: 200,
                            height: 200, // Fixe
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: myColor,
                                  width: ScreenUtil().setWidth(1.5)),
                              borderRadius: BorderRadius.circular(
                                  ScreenUtil().setWidth(15)),
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
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                     data.successResponse.data[index].zoneName.toString(),
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      style: TextStyle(
                                        color: myColor,
                                        fontFamily: 'Inter',
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        height: 1.5,
                                      ),
                                    ),
                                    SizedBox(height: 3,),
                                     Text(
                                     'Zone',
                                      textAlign: TextAlign.center,
                                     
                                      style: TextStyle(
                                        color: myColor,
                                        fontFamily: 'Inter',
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        height: 1.5,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                                  }
                                },
                              ),
                                      ),
                                    ) 
                                    ),
                                  
                                
                              ])
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
