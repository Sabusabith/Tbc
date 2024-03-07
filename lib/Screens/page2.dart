import 'package:flutter/material.dart';
import 'package:qhance_uiii/Screens/page8.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qhance_uiii/main.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
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
                "Southern Zone Domains",
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(15), color: Colors.white),
              ),
              actions: [
                Row(
                  children: [
                    Icon(
                      Icons.login_sharp,
                      color: Colors.white,
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10))
                  ],
                )
              ],
            ),
            backgroundColor: background,
            body: SingleChildScrollView(
                child: Container(
                    width: ScreenUtil().setWidth(360),
                    height: ScreenUtil().setHeight(600),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(),
                    ),
                    child: Column(children: [
                      SizedBox(
                        height: ScreenUtil().setHeight(35),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: ScreenUtil().setWidth(30),
                          ),
                          Container(
                            //indigoaccent
                            width: ScreenUtil().setWidth(143.23),
                            height: ScreenUtil().setHeight(143.23),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: myColor,
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      offset: Offset(0, 4),
                                      blurRadius: 2)
                                ],
                                color: Colors.white),
                            child: Center(
                              child: Text(
                                'TBC Huddle     Meeting',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: myColor,
                                  fontFamily: 'Inter',
                                  fontSize: ScreenUtil().setSp(18),
                                  // Set font size using ScreenUtil
                                  letterSpacing: ScreenUtil().setSp(2),
                                  fontWeight: FontWeight.w700,
                                  height: ScreenUtil().setHeight(1),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(17),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>page8()));
                            },
                            child: Container(
                                width: ScreenUtil().setWidth(143.23),
                                height: ScreenUtil().setHeight(143.23),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: myColor,
                                      width: ScreenUtil().setWidth(1.5)),
                                  borderRadius: BorderRadius.circular(
                                      ScreenUtil().setWidth(15)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      offset: Offset(0, ScreenUtil().setHeight(4)),
                                      blurRadius: ScreenUtil().setHeight(2),
                                    ),
                                  ],
                                  color: Colors.white,
                                ),
                                child:
                                    Center(
                                      child: Text(
                                        "Reception",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: myColor,
                                          fontFamily: 'Inter',
                                          fontSize: ScreenUtil().setSp(18),
                                          letterSpacing: ScreenUtil().setSp(2),
                                          fontWeight: FontWeight.w700,
                                          height: ScreenUtil().setHeight(1),
                                        ),
                                      ),
                                    ),

                              ),
                          ),

                        ],
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(30),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: ScreenUtil().setWidth(27),
                          ),
                          Container(
                            width: ScreenUtil().setWidth(143.23),
                            height: ScreenUtil().setHeight(143.23),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: myColor,
                                  width: ScreenUtil().setWidth(1.5)),
                              borderRadius: BorderRadius.circular(
                                  ScreenUtil().setWidth(15)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.25),
                                  offset: Offset(0, ScreenUtil().setHeight(4)),
                                  blurRadius: ScreenUtil().setHeight(2),
                                ),
                              ],
                              color: Colors.white,
                            ),
                            child:

                                Center(
                                  child: Text("Patients Rights  &           Responsibilty",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: myColor,
                                          fontFamily: 'Inter',
                                          fontSize: ScreenUtil().setSp(18),
                                          letterSpacing: ScreenUtil().setSp(0),
                                          //percentages not used in flutter. defaulting to zero/,
                                          fontWeight: FontWeight.w700,
                                          height: ScreenUtil().setHeight(1))),
                                ),



                          ),
                          SizedBox(
                            width: 17,
                          ),
                          Container(
                              width: ScreenUtil().setWidth(143.23),
                              height: ScreenUtil().setHeight(143.23),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: myColor, width: 1.5),
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        offset: Offset(0, 4),
                                        blurRadius: ScreenUtil().setHeight(2)),
                                  ],
                                  color: Colors.white),
                              child:

                                Center(
                                  child: Text("Case Coordinator",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: myColor,
                                          fontFamily: 'Inter',
                                          fontSize: ScreenUtil().setSp(18),
                                          letterSpacing: ScreenUtil().setSp(2),
                                          //percentages not used in flutter. defaulting to zero/,
                                          fontWeight: FontWeight.w700,
                                          height: ScreenUtil().setHeight(1))),
                                ),

                              )
                        ],
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(30),
                      ),
                      Row(children: [
                        SizedBox(
                          width: ScreenUtil().setHeight(27),
                        ),
                        Container(
                          width: ScreenUtil().setWidth(143.23),
                          height: ScreenUtil().setHeight(143.23),
                          decoration: BoxDecoration(
                              border: Border.all(color: myColor, width: 1.5),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    offset: Offset(0, 4),
                                    blurRadius: 2)
                              ],
                              color: Colors.white),
                          child:
                              Center(
                                child: Text("Health Coach",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: myColor,
                                      fontFamily: 'Inter',
                                      fontSize: ScreenUtil().setSp(18),
                                      letterSpacing: ScreenUtil().setSp(1),
                                      //percentages not used in flutter. defaulting to zero/,
                                      fontWeight: FontWeight.w700,
                                      height: ScreenUtil().setHeight(1),
                                    )),
                              ),


                        ),
                        SizedBox(
                          width: 17,
                        ),
                        Container(
                          width: ScreenUtil().setWidth(143.23),
                          height: ScreenUtil().setHeight(143.23),
                          decoration: BoxDecoration(
                              border: Border.all(color: myColor, width: 1.5),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    offset: Offset(0, 4),
                                    blurRadius: 2)
                              ],
                              color: Colors.white),
                          child:


                              Center(
                                child: Text("Nursing",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: myColor,
                                        fontFamily: 'Inter',
                                        fontSize: ScreenUtil().setSp(18),
                                        letterSpacing: ScreenUtil().setSp(2),
                                        //percentages not used in flutter. defaulting to zero/,
                                        fontWeight: FontWeight.w700,
                                        height: ScreenUtil().setHeight(1))),
                              )

                        ),
                      ]),
                    ])))));
  }
}
