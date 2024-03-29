import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qhance_uiii/Screens/type2/item_screen.dart';
import 'package:qhance_uiii/Screens/type3/activities.dart';
import 'package:qhance_uiii/Screens/type3/zones3.dart';
import 'package:qhance_uiii/Screens/type2/zone2.dart';


import '../../helper/colors.dart';

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
          leading: InkWell(onTap: (){
            Navigator.pop(context);
          },child: Icon(Icons.arrow_back,color: Colors.white,)),
            automaticallyImplyLeading: false,
            title: const Text(
              "Southern Zone Domains",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: myColor,
            actions: [
              Row(
                children: [
                 GestureDetector(onTap: (){
                  Get.to(page6());
                 },child: Image.asset('assets/go.png',height: 25,)),
                  SizedBox(
                    width: ScreenUtil().setWidth(13),
                  )
                ],
              ),
            ]),
        backgroundColor: background,
        body:  SizedBox(width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(height: 25,),
               Row(crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text("Domains",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey.shade800),),
                    ),
                 ],
               ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
                  child: GridView.builder(
                                     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                      childAspectRatio: 1,
                                          crossAxisCount: 2, // Number of columns
                                          crossAxisSpacing: 20.0, // Spacing between columns
                                          mainAxisSpacing: 20.0, // Spacing between rows
                                        ),
                                    itemCount:zonename.length,
                                    itemBuilder: (context, index) => InkWell(
                                      onTap: (){
                                    
                                        Get.to(page8());
                                    
                                      },
                                      child: Container(
                                        width: ScreenUtil().setWidth(143.23),
                                        height: ScreenUtil().setHeight(143.23),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: myColor, width: ScreenUtil().setWidth(1.5)),
                                          borderRadius:
                                              BorderRadius.circular(ScreenUtil().setWidth(15)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color.fromRGBO(0, 0, 0, 0.25),
                                              offset: Offset(0, ScreenUtil().setHeight(4)),
                                              blurRadius: ScreenUtil().setHeight(2),
                                            ),
                                          ],
                                          color: Colors.white,
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 15),
                                            child: Text(
                                              zonename[index].toString(),
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                
                                                color: myColor,
                                                fontFamily: 'Inter',
                                                fontSize: 18,
                                                letterSpacing: 1,
                                                fontWeight: FontWeight.bold,
                                                height: ScreenUtil().setHeight(1),
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
          ),
        ),
      ),
    );
  }
}
List zonename = [
  "TBC Huddle Meeting",
  'Reception',
  'Patients Right & Responsibily',
  'Case Coordinator',
  'Health Coach',
  'Nursing'
];
