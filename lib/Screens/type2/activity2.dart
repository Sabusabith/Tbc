import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:qhance_uiii/Screens/type2/actionPlan2.dart';
import 'package:qhance_uiii/Screens/type2/actionPlan_update2.dart';
import 'package:qhance_uiii/Screens/type2/activity_progression2.dart';
import 'package:qhance_uiii/Screens/type2/controller/delete_task_controller.dart';
import 'package:qhance_uiii/Screens/type2/model/getzones_model.dart';
import 'package:qhance_uiii/Screens/type3/activityProgression.dart';
import 'package:qhance_uiii/Screens/type3/model/get_users_model.dart';
import '../../helper/colors.dart';
import 'controller/get_domain_controller.dart';
import 'model/getDomainFromPHC_model.dart';

class Activities2 extends StatefulWidget {
  Activities2({
    required this.taskDetails,
    required this.phcdetailid,
    required this.domain_name,
    required this.domainid,
  });

  final List<TaskDetail>? taskDetails;
  var domain_name;
  var domainid;
  var phcdetailid;

  @override
  State<Activities2> createState() => _Activities2State();
}

class _Activities2State extends State<Activities2> {
  var task_progresion;

  DeleteTaskController _taskController = Get.put(DeleteTaskController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // Filter the taskDetails to only include active tasks
    List<TaskDetail> activeTaskDetails =
        widget.taskDetails?.where((task) => task.isActive == 1).toList() ?? [];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            InkWell(
              onTap: () {
                Get.to(ActivityProgression2(
                  domainid: widget.domainid,
                ));
              },
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
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
            "${widget.domain_name} Activities",
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
            child: activeTaskDetails.isNotEmpty
                ? ListView.builder(
                    itemCount: activeTaskDetails.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              const SizedBox(width: 15),
                              GestureDetector(
                                onTap: () {
                                  var taskProgressionId = "";
                                  if (activeTaskDetails[index]
                                              .taskProgression !=
                                          null &&
                                      activeTaskDetails[index]
                                          .taskProgression!
                                          .isNotEmpty) {
                                    taskProgressionId = activeTaskDetails[index]
                                            .taskProgression![0]
                                            .id ??
                                        "";
                                  }

                                  Get.to(ActionPlanUpdate2(
                                    phcdetailid: widget.phcdetailid,
                                    taskprogressionId: taskProgressionId,
                                    taskdetailid: activeTaskDetails[index].id,
                                  ));
                                },
                                child: Container(
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
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(12.0),
                                                bottomLeft:
                                                    Radius.circular(12.0),
                                              ),
                                            ),
                                            child: Column(
                                              children: [
                                                const SizedBox(height: 24),
                                                const Text(
                                                  "Start Date",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13,
                                                  ),
                                                ),
                                                const SizedBox(height: 5),
                                                Text(
                                                  activeTaskDetails[index]
                                                              .startDate !=
                                                          null
                                                      ? DateFormat('yyyy-MM-dd')
                                                          .format(DateTime.parse(
                                                              activeTaskDetails[
                                                                          index]
                                                                      .startDate ??
                                                                  'No Data'))
                                                      : 'No Data',
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                const SizedBox(height: 25),
                                                const Text(
                                                  "End Date ",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13,
                                                  ),
                                                ),
                                                const SizedBox(height: 5),
                                                Text(
                                                  activeTaskDetails[index]
                                                              .endDate !=
                                                          null
                                                      ? DateFormat('yyyy-MM-dd')
                                                          .format(DateTime.parse(
                                                              activeTaskDetails[
                                                                          index]
                                                                      .endDate ??
                                                                  'No Data'))
                                                      : 'No Data',
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
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
                                                  const SizedBox(width: 12),
                                                  SizedBox(
                                                    width: 200,
                                                    height: 80,
                                                    child: Text(
                                                      activeTaskDetails[index]
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
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            bottom: 60),
                                                    child: InkWell(
                                                      onTap: () {
                                                        _showDeleteConfirmationDialog(
                                                            context,
                                                            activeTaskDetails[
                                                                        index]
                                                                    .id ??
                                                                '');
                                                      },
                                                      child: Icon(
                                                        CupertinoIcons.delete,
                                                        color: Colors.red
                                                            .withOpacity(.7),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(width: 5),
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
                                                        SizedBox(
                                                          width: 40,
                                                          height: 40,
                                                          child:
                                                              CircularProgressIndicator(
                                                            strokeWidth: 5,
                                                            value: activeTaskDetails[
                                                                            index]
                                                                        .score !=
                                                                    null
                                                                ? activeTaskDetails[
                                                                            index]
                                                                        .score! /
                                                                    100 // Assuming score is out of 100
                                                                : 0.0,
                                                            valueColor:
                                                                const AlwaysStoppedAnimation<
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
                                                            activeTaskDetails[
                                                                        index]
                                                                    .score
                                                                    .toString() ??
                                                                "Demo Task",
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: const TextStyle(
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
                  )),
          ),
        ),
      ),
    );
  }

  void _showDeleteConfirmationDialog(BuildContext context, String taskId) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Delete Task",
            style: TextStyle(color: Colors.grey.shade800),
          ),
          content: Text("Do you want to delete this task?",
              style: TextStyle(color: Colors.grey.shade800)),
          actions: <Widget>[
            TextButton(
              child: Text(
                "Cancel",
                style: TextStyle(color: myColor),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text(
                "Delete",
                style: TextStyle(color: myColor),
              ),
              onPressed: () async {
                await _taskController.deleteTask(taskId,context);
                Get.find<GetDomainFromPHCcontroller2>()
                    .getDomains(widget.phcdetailid);

                Navigator.of(context).pop();
                Get.back();
              },
            ),
          ],
        );
      },
    );
  }
}
