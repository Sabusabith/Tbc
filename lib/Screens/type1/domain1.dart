import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qhance_uiii/Screens/type1/activity1.dart';
import 'package:qhance_uiii/Screens/type1/controller/getdomains1_controller.dart';
import 'package:qhance_uiii/Screens/type2/activity2.dart';

import '../../helper/colors.dart';


class Domains1 extends StatelessWidget {
  Domains1({super.key});

  @override
  Widget build(BuildContext context) {
    final GetDomainFromPHCcontroller1 controller = Get.find();

    // Call API to fetch domain list

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.white),
          ),
          automaticallyImplyLeading: false,
          title: const Text(
            "Domains",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
       
          backgroundColor: myColor,
          actions: [
            // Row(
            //   children: [
            //     GestureDetector(
            //       onTap: () {
            //         Get.to(page6());
            //       },
            //       child: Image.asset('assets/go.png', height: 25),
            //     ),
            //     SizedBox(
            //       width: ScreenUtil().setWidth(13),
            //     )
            //   ],
            // ),
          ],
        ),
        backgroundColor: background,
        body: Obx(
          () {
            // Show loading indicator while data is being fetched
            if (controller.isloading.value) {
              return Center(
                child: CircularProgressIndicator(color: myColor,),
              );
            }
            // Show domain list once data is fetched
            else {
              // Check if the domain list is empty
              if (controller.model?.successResponse.data?.isEmpty ?? true) {
                // Display a message indicating that no domains are available
                return Center(
                  child: Text(
                    "No available Domains",
                    style: TextStyle(fontSize: 18,color: Colors.grey.shade800),
                  ),
                );
              } else {
                return Column(
                  children: [
                    SizedBox(height: 25),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            "Domains",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade800,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 20, right: 20, left: 20),
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1,
                            crossAxisCount: 2,
                            crossAxisSpacing: 20.0,
                            mainAxisSpacing: 20.0,
                          ),
                          itemCount:
                              controller.model?.successResponse.data?.length ?? 0,
                          itemBuilder: (context, index) => InkWell(
                            onTap: () {
                           var phcdetailId = controller.model?.successResponse.data?[index].phcDetailId;   
                           var data = controller.model?.successResponse.data?[index].domain.taskDetail;
                              // Handle domain item tap
                              Get.to(Activities1(taskDetails: data, phcdetailid: phcdetailId));
                            },
                            child: Container(
                              width: ScreenUtil().setWidth(200),
                              height: ScreenUtil().setHeight(200),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: myColor,
                                  width: ScreenUtil().setWidth(1.5),
                                ),
                                borderRadius: BorderRadius.circular(
                                    ScreenUtil().setWidth(15)),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color.fromRGBO(0, 0, 0, 0.25),
                                    offset: Offset(
                                        0, ScreenUtil().setHeight(4)),
                                    blurRadius: ScreenUtil().setHeight(2),
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Text(
                                    controller.model?.successResponse.data?[index]
                                            .domain.domainName ??
                                        "No Domain",
                                    textAlign: TextAlign.center,
                                    maxLines: 4,
                                    style: TextStyle(
                                      color: myColor,
                                      fontFamily: 'Inter',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }
            }
          },
        ),
      ),
    );
  }
}
