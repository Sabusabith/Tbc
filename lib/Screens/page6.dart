import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qhance_uiii/Screens/page7.dart';
import 'package:qhance_uiii/main.dart';

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
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text(
            "Item",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Row(
              children: [
                Icon(
                  Icons.login_sharp,
                  color: Colors.white,
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(15),
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
                  child: Container(
                    height: ScreenUtil().setHeight(78),
                    width: ScreenUtil().setWidth(335),
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: textfieldform,
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.white
                              ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 55),
                        hintText: "Completion of patients' health records in HIS, Wasfaty program……etc",
                        hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      style: TextStyle(color: Colors.black),
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
                  Text(
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
                  child: Container(
                    height: ScreenUtil().setHeight(138),
                    width: ScreenUtil().setWidth(335),
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: textfieldform,
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 10,vertical: 110),
                        hintText: "What evidence you need",

                        hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(300),
              ),
              Container(
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
                          context, MaterialPageRoute(builder: (context) => page7()));
                    },
                    child: Text(
                      "Send", style: TextStyle(color: Colors.white),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
