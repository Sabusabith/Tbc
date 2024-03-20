import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:qhance_uiii/Screens/page5.dart';
import 'package:qhance_uiii/controllers/api/get_add_item_controller.dart';
import 'package:qhance_uiii/controllers/api/get_zone_controller.dart';
import 'package:qhance_uiii/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controllers/api/get_phc_detail_controller.dart';
import '../controllers/api/login_controller.dart';
import '../helper/colors.dart';
import 'package:intl/intl.dart';

class page8 extends StatelessWidget {
 page8({super.key});

 GetPhcDetailsController controller = Get.put(GetPhcDetailsController());
 GetAddItemController additemcontroller = Get.put(GetAddItemController());
  @override
  Widget build(BuildContext context) {
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
          title: const Text(
            "Reception Activities",
            style: TextStyle(fontSize: 19, color: Colors.white),
          ),
          backgroundColor: myColor,
          actions: [
            IconButton(
                onPressed: ()async {
                  var authid = await Get.find<LoginController>().authid;
                additemcontroller.getItems(authid);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const page5()));
                },
                icon: const Icon(Icons.logout,color: Colors.white,))
          ],
        ),
        backgroundColor: background,
        body:Obx(
         ()=> controller.isLoading.value?Center(child: CircularProgressIndicator(color: Colors.green,)): ListView.builder(
            
            itemCount: controller.model?.successResponse.data.length,
            itemBuilder: (context,index)=>
          Column(
            children: [
              SizedBox(height: 15,),
              Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 160.h,
                          width: 335.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2.r,
                                blurRadius: 5.r,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 160.h,
                                    width: 92.w,
                                    decoration: BoxDecoration(
                                      color: myColor,
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(12.0),
                                        // Adjust the radius as needed
                                        bottomLeft: Radius.circular(12.0),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 24,
                                        ),
                                        Text(
                                          "Start Date",
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 15),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          DateFormat('dd-MM-yyyy').format(
                                                controller.model!.successResponse
                                                    .data[index].createdAt),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Text(
                                          "End Date ",
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 15),
                                        ),
                                        Text(
                                           DateFormat('dd-MM-yyyy').format(
                                                controller.model!.successResponse
                                                    .data[index].updatedAt),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          const SizedBox(
                                            width: 12,
                                          ),
                                          SizedBox(
                                            width: 200,
                                            child: Text(
                                                controller.model!.successResponse.data[index].remarks.toString(),
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 34,
                                      ),
                                      Row(
                                        children: [
                                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Assigned to     ",
                                                  style: TextStyle(
                                                      fontSize: 12.sp,
                                                      color: Colors.black54,
                                                      fontWeight: FontWeight.w400)),
                                              Text(   controller.model!.successResponse.data[index].phcName.toString(),
                                                  style: TextStyle(
                                                      fontSize: 13.sp,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w500)),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 73,
                                          ),
                                          Container(
                                            child: const CircularProgressIndicator(
                                              value: 0.25, // 25% completion
                                              backgroundColor: Colors.grey,
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                      Colors.green),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
            ],
          ),),
        )
      ),
    );
     
    
  }
}
       