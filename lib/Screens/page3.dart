import 'package:flutter/material.dart';
import 'package:qhance_uiii/Screens/page4.dart';
import 'package:qhance_uiii/main.dart';

import '../widgets/container_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class page3 extends StatefulWidget {
  const page3({super.key});

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
              backgroundColor: myColor,
              title: Text(
                "Primary Health care(Middle Zone)",
                style: GoogleFonts.inter(fontSize: 15,color: Colors.white,fontWeight:FontWeight.w700),
              ),
            ),
            backgroundColor: background,
            body: Container(
                  width: ScreenUtil().screenWidth,
                  height: ScreenUtil().screenHeight,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      ),
                    ),

                  child: Column(
                    children: [
                      SizedBox(
                        height: ScreenUtil().setHeight(20),
                      ),
                      Padding(
                        padding: EdgeInsets.all(ScreenUtil().setWidth(8.0)),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => page4()));
                          },
                          child: customcontainer(
                            text3: "care code",
                            borderRadius: ScreenUtil().setWidth(12),
                            Bordercolor: Colors.deepOrange,
                            text1: "Primary Health Care Name",
                            textColor: Colors.black87,
                            width: ScreenUtil().setWidth(333),
                            height: ScreenUtil().setHeight(80),
                            text: "Health Zone Name",
                            text1Color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(20),
                      ),
                      customcontainer(
                        text3: "care code",
                        borderRadius: ScreenUtil().setWidth(13),
                        Bordercolor: Colors.black,
                        text: "Health Zone Name",
                        text1: "Primary Health Care Name",
                        textColor: Colors.black,
                        text1Color: Colors.grey,
                        width: ScreenUtil().setWidth(333),
                        height: ScreenUtil().setHeight(80),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(20),
                      ),
                      customcontainer(
                          borderRadius: ScreenUtil().setWidth(13),
                          Bordercolor: Colors.black87,
                          text: "Health Zone Name",
                          text1: "Primary Health Care Name",
                          textColor: Colors.black87,
                          text1Color: Colors.grey,
                          width: ScreenUtil().setWidth(333),
                          height: ScreenUtil().setHeight(80),
                          text3: "care code"),
                      SizedBox(
                        height: ScreenUtil().setHeight(20),
                      ),
                      customcontainer(
                        text3: "care code",
                        borderRadius: ScreenUtil().setWidth(13),
                        Bordercolor: Colors.black,
                        text: "Health Zone Name",
                        text1: "Primary Health Care Name",
                        textColor: Colors.black,
                        text1Color: Colors.grey,
                        width: ScreenUtil().setWidth(333),
                        height: ScreenUtil().setHeight(80),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(20),
                      ),
                      customcontainer(
                        text3: "care code",
                        borderRadius: ScreenUtil().setWidth(10),
                        Bordercolor: Colors.white,
                        text: "Health Zone Name",
                        text1: "Primary Health Care Name",
                        textColor: Colors.black,
                        text1Color: Colors.grey,
                        width: ScreenUtil().setWidth(333),
                        height: ScreenUtil().setHeight(80),
                      )
                    ],
                  ),
                )));
  }
}
