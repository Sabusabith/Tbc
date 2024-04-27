import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:qhance_uiii/Screens/type1/model/getDomain1Model.dart';

import '../../helper/colors.dart';

class Activities1 extends StatelessWidget {
  Activities1(
      {required this.taskDetails,required this.phcdetailid,required this.domain_name});

final List<TaskDetail>? taskDetails;
var phcdetailid;
var domain_name;
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
          title: Text(
          domain_name + ' Activities',
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
              child:taskDetails!.isNotEmpty? ListView.builder(
                itemCount: taskDetails?.length??0,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(height: 20),
                      Row(
                        children: [
                          SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                            
                           
                           

                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => ActivityProgression2(
                              //               taskid: taskDetails?[index].id??'0',
                              //               phcid: phcdetailid??'0',
                              //               taskname: taskDetails?[index].taskName??"Demo Task",
                              //               evidence: taskDetails?[index].evidenceOfCompliance??"No Data",
                              //             )));
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
  taskDetails?[index].startDate != null
      ? DateFormat('yyyy-MM-dd').format(DateTime.parse(taskDetails?[index].startDate ?? 'No Data'))
      :'No Data',
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
  taskDetails?[index].startDate != null
      ? DateFormat('yyyy-MM-dd').format(DateTime.parse(taskDetails?[index].endDate ?? 'No Data'))
      :'No Data',
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
                                                 taskDetails?[index].taskName.toString()??"Demo Task",
                                                  style: TextStyle(
                                                    fontSize: 14.sp,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  maxLines: 4,
                                                  softWrap: true,
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                                        value:taskDetails?[index].score != null
      ? taskDetails![index].score! / 100 // Assuming score is out of 100
      : 0.0,
                                                        valueColor:
                                                            new AlwaysStoppedAnimation<
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
                                                       taskDetails?[index].score.toString()??"Demo Task",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 10,
                                                          color: Color.fromARGB(
                                                              255, 52, 130, 54),
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
              ):Center(child: Text("No Tasks",style: TextStyle(color: Colors.grey.shade800),))
            )),
      ),
    );
  }
}
