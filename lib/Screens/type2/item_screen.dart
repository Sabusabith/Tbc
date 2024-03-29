import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qhance_uiii/Screens/type3/additem.dart';
import 'package:qhance_uiii/Screens/type3/users.dart';
import 'package:qhance_uiii/main.dart';

import '../../helper/colors.dart';

class page6 extends StatefulWidget {
  const page6({super.key});

  @override
  State<page6> createState() => _page6State();
}

class _page6State extends State<page6> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: myColor,
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
            "Item",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
           Row(
                children: [
                 GestureDetector(onTap: (){
                  Get.to(page5());
                 },child: Image.asset('assets/go.png',height: 25,)),
                  SizedBox(
                    width: ScreenUtil().setWidth(13),
                  )
                ],
              ),
          ],
        ),
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: ScreenUtil().setHeight(30),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Card(
                  elevation: 4, // Adjust the elevation as needed
                  shadowColor: Colors.white, // Set the shadow color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: SizedBox(
                   
                    width: ScreenUtil().setWidth(335),
                    child: TextFormField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        filled: true,
                        
                        fillColor: textfieldform,
                        border: InputBorder.none,
                        focusedBorder:  OutlineInputBorder(
                          
                          borderSide:
                              const BorderSide(width: 1, color: Colors.white
                              ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.white
                              ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        hintText: "Completion of patients' health records in HIS, Wasfaty program……etc",
                        hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(23),
              ),
              Row(
                children: [
                  SizedBox(
                    width: ScreenUtil().setWidth(25),
                  ),
                  const Text(
                    "Action Plan",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  elevation: 5, // Adjust the elevation as needed
                  shadowColor: Colors.white, // Set the shadow color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: SizedBox(
                   
                    width: ScreenUtil().setWidth(335),
                    child: TextFormField(
                      maxLines: 7,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: textfieldform,
                        border: InputBorder.none,
                        focusedBorder:OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(10.0),
                        ) ,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding:
                        const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                        hintText: "What evidence you need?",

                        hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(90),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(59),
                width: ScreenUtil().setWidth(335),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: myColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15.0), // Set the button border radius
                      ),

                    ),
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) =>  page7()));
                    },
                    child: const Text(
                      "Send", style: TextStyle(color: Colors.white),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
