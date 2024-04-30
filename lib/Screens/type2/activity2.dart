import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:qhance_uiii/Screens/type2/actionPlan2.dart';
import 'package:qhance_uiii/Screens/type2/actionPlan_update2.dart';
import 'package:qhance_uiii/Screens/type2/activity_progression2.dart';
import 'package:qhance_uiii/Screens/type2/model/getzones_model.dart';
import 'package:qhance_uiii/Screens/type3/activityProgression.dart';
import 'package:qhance_uiii/Screens/type3/model/get_users_model.dart';
import '../../helper/colors.dart';
import 'model/getDomainFromPHC_model.dart';

class Activities2 extends StatelessWidget {
  Activities2(
      {required this.taskDetails,
      required this.phcdetailid,
      required this.domain_name,
      required this.domainid});

  final List<TaskDetail>? taskDetails;
  var domain_name;
  var domainid;
  var phcdetailid;
  var task_progresion;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            InkWell(
                onTap: () {
                  Get.to(ActivityProgression2(
                    domainid: domainid,
                  ));
                },
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                )),
            SizedBox(
              width: 10,
            )
          ],
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
            "$domain_name Activities",
            style: TextStyle(fontSize: 19, color: Colors.white),
          ),
          backgroundColor: myColor,
        ),
        backgroundColor: background,
        body: SizedBox(
            width: size.width,
            height: size.height,
            child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: taskDetails!.isNotEmpty
                    ? ListView.builder(
                        itemCount: taskDetails?.length ?? 0,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(width: 15),
                                  GestureDetector(
                                    onTap: () {
                                      var taskProgressionId = "";
                                      if (taskDetails?[index].taskProgression !=
                                              null &&
                                          taskDetails![index]
                                              .taskProgression!
                                              .isNotEmpty) {
                                        taskProgressionId = taskDetails?[index]
                                                .taskProgression![0]
                                                .id ??
                                            "";
                                      }

                                      Get.to(ActionPlanUpdate2(
                                        phcdetailid: phcdetailid,
                                        taskprogressionId: taskProgressionId,
                                        taskdetailid: taskDetails?[index].id,
                                      ));
                                    },
                                    child: Container(
                                      height: 160.h,
                                      width: 335.w,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(12.r),
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
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(12.0),
                                                    bottomLeft:
                                                        Radius.circular(12.0),
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
                                                      taskDetails?[index]
                                                                  .startDate !=
                                                              null
                                                          ? DateFormat(
                                                                  'yyyy-MM-dd')
                                                              .format(DateTime.parse(
                                                                  taskDetails?[
                                                                              index]
                                                                          .startDate ??
                                                                      'No Data'))
                                                          : 'No Data',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                      taskDetails?[index]
                                                                  .startDate !=
                                                              null
                                                          ? DateFormat(
                                                                  'yyyy-MM-dd')
                                                              .format(DateTime.parse(
                                                                  taskDetails?[
                                                                              index]
                                                                          .endDate ??
                                                                      'No Data'))
                                                          : 'No Data',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      SizedBox(width: 12),
                                                      SizedBox(
                                                        width: 200,
                                                        height: 80,
                                                        child: Text(
                                                          taskDetails?[index]
                                                                  .taskName
                                                                  .toString() ??
                                                              "Demo Task",
                                                          style: TextStyle(
                                                            fontSize: 14.sp,
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                          maxLines: 4,
                                                          softWrap: true,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                        ),
                                                      ),
                                                      SizedBox(width: 20),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      SizedBox(
                                                        height: 40,
                                                        child: Stack(
                                                          children: <Widget>[
                                                            Container(
                                                              width: 40,
                                                              height: 40,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                strokeWidth: 5,
                                                                value: taskDetails?[index]
                                                                            .score !=
                                                                        null
                                                                    ? taskDetails![index]
                                                                            .score! /
                                                                        100 // Assuming score is out of 100
                                                                    : 0.0,
                                                                valueColor: new AlwaysStoppedAnimation<
                                                                        Color>(
                                                                    Color.fromARGB(
                                                                        255,
                                                                        73,
                                                                        170,
                                                                        76)),
                                                                backgroundColor:
                                                                    Colors.grey,
                                                              ),
                                                            ),
                                                            Positioned(
                                                              bottom: 0,
                                                              left: 0,
                                                              right: 0,
                                                              top: 15,
                                                              child: Text(
                                                                taskDetails?[
                                                                            index]
                                                                        .score
                                                                        .toString() ??
                                                                    "Demo Task",
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 10,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          52,
                                                                          130,
                                                                          54),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      )
                    : Center(
                        child: Text(
                        "No Tasks",
                        style: TextStyle(color: Colors.grey.shade800),
                      )))),
      ),
    );
  }
}
