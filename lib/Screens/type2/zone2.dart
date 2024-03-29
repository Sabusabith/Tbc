import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qhance_uiii/Screens/type2/adduser.dart';
import 'package:qhance_uiii/main.dart';

import '../../helper/colors.dart';
import '../../widgets/container_widget.dart';
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

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back,color: Colors.white,),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              actions: [Image.asset('assets/go.png',height: 25,),
              SizedBox(width: 10,)],
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

                  child:   Column(
                    children: [
                      SizedBox(height: 20,),
                      Expanded(
                        child: ListView.builder(itemCount: 5,itemBuilder: (context ,index)=>
                         Padding(
                                padding: EdgeInsets.all(ScreenUtil().setWidth(8.0)),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => page4()));
                                  },
                                  child: Column(
                                    children: [
                               
                                      customcontainer(
                                        text4: '',
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
                                    ],
                                  ),
                                ),
                              ),
                        ),
                      ),
                    ],
                  ),
                )));
  }
}
