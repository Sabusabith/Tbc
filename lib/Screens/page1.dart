import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qhance_uiii/Screens/page2.dart';
import 'package:qhance_uiii/Screens/page3.dart';


import '../helper/colors.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text(
              "Zones",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: myColor,
            actions: [
              Row(
                children: [
                  const Icon(
                    Icons.login_sharp,
                    color: Colors.white,
                    size: 23,
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(13),
                  )
                ],
              ),
            ]),
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: ScreenUtil().setHeight(70),
              ),
              Row(
                children: [
                  SizedBox(
                    width: ScreenUtil().setWidth(20),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => page2()));
                    },
                    child: Container(
                      height: ScreenUtil().setHeight(152.72),
                      width: ScreenUtil().setWidth(152.72),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                          color: myColor,
                          width: 2.0,
                        ),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: ScreenUtil().setHeight(40),
                            ),
                            Text(
                              "Southern ",
                              style: GoogleFonts.poppins(
                                  color: myColor,
                                  fontSize: ScreenUtil().setSp(17),
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Zone ",
                              style: GoogleFonts.poppins(
                                  color: myColor,
                                  fontSize: ScreenUtil().setSp(17),
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(20),
                  ),
                  Container(
                    height: ScreenUtil().setHeight(152.72),
                    width: ScreenUtil().setWidth(152.72),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                        color: myColor,
                        width: 2.0,
                      ),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: ScreenUtil().setHeight(40),
                          ),
                          Text(
                            "Northern ",
                            style: GoogleFonts.poppins(
                                color: myColor,
                                fontSize: ScreenUtil().setSp(17),
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Zone ",
                            style: GoogleFonts.poppins(
                                color: myColor,
                                fontSize: ScreenUtil().setSp(17),
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil().setHeight(40),
              ),
              Row(
                children: [
                  SizedBox(
                    width: ScreenUtil().setWidth(20),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const page3()));
                    },
                    child: Container(
                      height: ScreenUtil().setHeight(152.72),
                      width: ScreenUtil().setWidth(152.72),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: myColor,
                          width: 2.0,
                        ),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: ScreenUtil().setHeight(40),
                            ),
                            Text(
                              "Middle ",
                              style: GoogleFonts.poppins(
                                  color: myColor,
                                  fontSize: ScreenUtil().setSp(17),
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Zone ",
                              style: GoogleFonts.poppins(
                                  color: myColor,
                                  fontSize: ScreenUtil().setSp(17),
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(20),
                  ),
                  Container(
                    height: ScreenUtil().setHeight(152.72),
                    width: ScreenUtil().setWidth(152.72),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: myColor,
                        width: 2.0,
                      ),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: ScreenUtil().setHeight(40),
                          ),
                          Text(
                            "Eastern ",
                            style: GoogleFonts.poppins(
                                color:myColor,
                                fontSize: ScreenUtil().setSp(17),
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Zone ",
                            style: GoogleFonts.poppins(
                                color: myColor,
                                fontSize: ScreenUtil().setSp(17),
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
