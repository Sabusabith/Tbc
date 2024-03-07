import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qhance_uiii/Screens/page5.dart';
import 'package:qhance_uiii/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class page8 extends StatefulWidget {
  const page8({super.key});

  @override
  State<page8> createState() => _page8State();
}

class _page8State extends State<page8> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text(
            "Reception Activities",
            style: TextStyle(fontSize: 19, color: Colors.white),
          ),
          backgroundColor: myColor,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => page5()));
                },
                icon: Icon(Icons.logout,color: Colors.white,))
          ],
        ),
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25.h,
              ),
              Text(
                "Primary health care name",
                style: TextStyle(
                    fontWeight: FontWeight.w700, color: myColor, fontSize: 20),
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                children: [
                  SizedBox(
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
                          offset: Offset(0, 3),
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
                                borderRadius: BorderRadius.only(
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
                                    "10-12-2023 ",
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
                                    "10-12-2023 ",
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
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Container(
                                      width: 200,
                                      child: Text(
                                        "Completion of patients' health records in HIS,Wasfaty program..",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 34,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text("Assigned to     ",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w400)),
                                        Text("Person Name",
                                            style: TextStyle(
                                                fontSize: 13.sp,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500)),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 73,
                                    ),
                                    Container(
                                      child: CircularProgressIndicator(
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
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  SizedBox(
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
                          offset: Offset(0, 3),
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
                                borderRadius: BorderRadius.only(
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
                                    "10-12-2023 ",
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
                                    "10-12-2023 ",
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
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Container(
                                      width: 200,
                                      child: Text(
                                        "Completion of patients' health records in HIS,Wasfaty program..",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 34,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text("Assigned to     ",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w400)),
                                        Text("Person Name",
                                            style: TextStyle(
                                                fontSize: 13.sp,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500)),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 73,
                                    ),
                                    Container(
                                      child: CircularProgressIndicator(
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
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  SizedBox(
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
                          offset: Offset(0, 3),
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
                                borderRadius: BorderRadius.only(
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
                                    "10-12-2023 ",
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
                                    "10-12-2023 ",
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
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Container(
                                      width: 200,
                                      child: Text(
                                        "Completion of patients' health records in HIS,Wasfaty program..",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 34,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text("Assigned to     ",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w400)),
                                        Text("Person Name",
                                            style: TextStyle(
                                                fontSize: 13.sp,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500)),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 73,
                                    ),
                                    Container(
                                      child: CircularProgressIndicator(
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
          ),
        ),
      ),
    );
  }
}
