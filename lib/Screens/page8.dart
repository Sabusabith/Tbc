import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:qhance_uiii/Screens/page5.dart';
import '../controllers/api/get_phc_detail_controller.dart';
import '../helper/colors.dart';

class page8 extends StatelessWidget {
 page8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GetPhcDetailsController controller = Get.put(GetPhcDetailsController());
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
          title: const Text(
            "Reception Activities",
            style: TextStyle(fontSize: 19, color: Colors.white),
          ),
          backgroundColor: myColor,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const page5()));
              },
              icon:  Image.asset('assets/go.png',height: 25,),
            )
          ],
        ),
        backgroundColor: background,
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Obx(() {
            if (controller.isLoading.value) {
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.green,
                ),
              );
            } else if (controller.model == null ||
                controller.model!.successResponse.data == null ||
                controller.model!.successResponse.data!.isEmpty) {
              return Center(
                child: Text(
                  'No activities',
                  style: TextStyle(fontSize: 18,color: Colors.grey.shade600),
                ),
              );
            } else {
              return ListView.builder(
                itemCount: controller.model!.successResponse.data!.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(height: 15),
                      Row(
                        children: [
                          SizedBox(width: 15),
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
                                          bottomLeft: Radius.circular(12.0),
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 24),
                                          Text(
                                            "Start Date",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            DateFormat('yyyy-MM-dd').format(
                                              controller.model!
                                                  .successResponse
                                                  .data![index]
                                                  .createdAt,
                                            ),
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(height: 25),
                                          Text(
                                            "End Date ",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            DateFormat('yyyy-MM-dd').format(
                                              controller.model!
                                                  .successResponse
                                                  .data![index]
                                                  .updatedAt,
                                            ),
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(width: 12),
                                            SizedBox(
                                              width: 200,
                                              child: Text(
                                                controller.model!
                                                    .successResponse
                                                    .data?[index]
                                                    .remarks
                                                    .toString() ??
                                                    'No Activities',
                                                style: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 20),
                                          ],
                                        ),
                                        SizedBox(height: 34),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Assigned to     ",
                                                  style: TextStyle(
                                                    fontSize: 12.sp,
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                Text(
                                                  controller.model!
                                                      .successResponse
                                                      .data![index]
                                                      .phcName
                                                      .toString(),
                                                  style: TextStyle(
                                                    fontSize: 13.sp,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 73),
                                            Container(
                                              child:
                                              const CircularProgressIndicator(
                                                value: 0.25, // 25% completion
                                                backgroundColor: Colors.grey,
                                                valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                                  Colors.green,
                                                ),
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
                  );
                },
              );
            }
          }),
        ),
      ),
    );
  }
}
