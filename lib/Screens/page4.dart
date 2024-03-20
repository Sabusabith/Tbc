import 'package:flutter/material.dart';
import 'package:qhance_uiii/Screens/page5.dart';
import 'package:qhance_uiii/helper/colors.dart';
import 'package:qhance_uiii/main.dart';
import 'package:qhance_uiii/widgets/textfield_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class page4 extends StatefulWidget {
  const page4({super.key});

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

      Color myColor= const Color(0xFF518C7E);
    return SafeArea(
        child: Scaffold(
          backgroundColor: background,
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back,color: Colors.white,),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            backgroundColor: myColor,
            title: const Text("Add User", style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w600,
                color: Colors.white),),
            actions: [
              Row(
                children: [
                  const Icon(Icons.login_sharp, color: Colors.white,),
                  SizedBox(width: ScreenUtil().setWidth(10))
                ],
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: ScreenUtil().setHeight(34),),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 2, // Adjust the elevation as needed
                shadowColor: Colors.white, // Set the shadow color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: SizedBox(
                  height: ScreenUtil().setHeight(57),
                  width: ScreenUtil().setWidth(335),

                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: textfieldform,
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 13, vertical: 25),
                      hintText: "Username",
                      hintStyle: TextStyle(
color: Colors.grey[500],
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    style: const TextStyle(color: Colors.black87),
                  ),
                ),
              ),
            ),
                SizedBox(height: ScreenUtil().setHeight(1),),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 2, // Adjust the elevation as needed
                    shadowColor: Colors.white, // Set the shadow color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: SizedBox(
                      height: ScreenUtil().setHeight(57),
                      width: ScreenUtil().setWidth(335),
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: textfieldform,
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 13, vertical: 25),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        style: const TextStyle(color: Colors.black87),
                    
                      ),
                    ),
                  ),
                ),

                SizedBox(height: ScreenUtil().setHeight(1),),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 2, // Adjust the elevation as needed
                    shadowColor: Colors.white, // Set the shadow color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: SizedBox(
                      height: ScreenUtil().setHeight(57),
                      width: ScreenUtil().setWidth(335),
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: textfieldform,
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1, color: Colors.white70),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 13, vertical: 25),
                          hintText: "Confirm Password",
                          hintStyle: TextStyle(

                            color: Colors.grey[500],
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        style: const TextStyle(color: Colors.black87),

                      ),
                    ),
                  ),
                ),


                SizedBox(height: ScreenUtil().setHeight(1),),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 2, // Adjust the elevation as needed
                    shadowColor: Colors.white, // Set the shadow color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: SizedBox(
                      height: ScreenUtil().setHeight(57),
                      width: ScreenUtil().setWidth(335),
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: textfieldform,
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1, color: Colors.white70),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 13, vertical: 25),
                          hintText: "Team code",
                          hintStyle: TextStyle(

                            color: Colors.grey[500],
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),

                        style: const TextStyle(color: Colors.black87),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: ScreenUtil().setHeight(1),),


                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 2, // Adjust the elevation as needed
                    shadowColor: Colors.white, // Set the shadow color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: SizedBox(
                      height: ScreenUtil().setHeight(57),
                      width: ScreenUtil().setWidth(335),
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: textfieldform,
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1, color: Colors.white70),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 13, vertical: 25),
                          hintText: "Name",
                          hintStyle: TextStyle(

                            color: Colors.grey[500],
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        style: const TextStyle(color: Colors.black87),

                      ),
                    ),
                  ),
                ),

                SizedBox(height: ScreenUtil().setHeight(1),),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 2, // Adjust the elevation as needed
                    shadowColor: Colors.white, // Set the shadow color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: SizedBox(
                      height: ScreenUtil().setHeight(57),
                      width: ScreenUtil().setWidth(335),
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: textfieldform,

                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1, color: Colors.white70),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 13, vertical: 25),
                          hintText: "Specialization",
                          hintStyle: TextStyle(

                            color: Colors.grey[500],
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        style: const TextStyle(color: Colors.black87),

                      ),
                    ),
                  ),
                ),


                SizedBox(height: ScreenUtil().setHeight(1),),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        elevation: 2, // Adjust the elevation as needed
                        shadowColor: Colors.white, // Set the shadow color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: SizedBox(
                          height: ScreenUtil().setHeight(57),
                          width: ScreenUtil().setWidth(60),
                          child:  TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor:textfieldform,
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: background),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 13, vertical: 25),
                              hintText: "+91",
                              hintStyle: TextStyle(

                                color: Colors.grey[500],
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            style: const TextStyle(color: Colors.black87),

                          ) ,
                        ),
                      ),
                    ),
                    SizedBox(width: ScreenUtil().setWidth(1),),
                    Card(
                      elevation: 2, // Adjust the elevation as needed
                      shadowColor: Colors.white, // Set the shadow color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: SizedBox(
                                height: ScreenUtil().setHeight(57),
                                width: ScreenUtil().setWidth(260),
                                child:  TextFormField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: textfieldform,
                                    border: InputBorder.none,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(width: 1, color: background),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 13, vertical: 25),
                                    hintText: "Enter Mobile Number",
                                    hintStyle: TextStyle(

                                      color: Colors.grey[500],
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),

                                  style: const TextStyle(color: Colors.black87),
                                ) ,
                              ),
                    ),


                  ],
                ),





                SizedBox(height: ScreenUtil().setHeight(27),),
                SizedBox(
                  height: ScreenUtil().setHeight(57),
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
                            context, MaterialPageRoute(builder: (context) => const page5()));
                      },
                      child: const Text(
                        "Register", style: TextStyle(color: Colors.white),)),
                )
              ],
            ),
          ),
        )
    );
  }
}
