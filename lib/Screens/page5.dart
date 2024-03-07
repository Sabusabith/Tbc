import 'package:flutter/material.dart';
import 'package:qhance_uiii/Screens/page6.dart';
import 'package:qhance_uiii/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class page5 extends StatefulWidget {
  const page5({super.key});

  @override
  State<page5> createState() => _page5State();
}

class _page5State extends State<page5> {
  int _selectedValue = 1;
  int _radiobutton = 1;
  int _unselect = 1;


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
          "Add Item",
          style: GoogleFonts.inter(
              fontSize: 19, color: Colors.white, fontWeight: FontWeight.w600),
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
        child: Column(children: [
          SizedBox(
            height: ScreenUtil().setHeight(24),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Card(
              elevation: 2, // Adjust the elevation as needed
              shadowColor: Colors.white, // Set the shadow color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                height: ScreenUtil().setHeight(57),
                width: ScreenUtil().setWidth(335),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: textfieldform,
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 13, vertical: 25),
                    hintText: "Task Name",
                    hintStyle: TextStyle(

                      color: Colors.grey[400],
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(14),
          ),
          Row(
            children: [
              SizedBox(
                width: ScreenUtil().setWidth(25),
              ),
              Text(
                "Evidence of Compliance",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 14),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Card(
              elevation: 2, // Adjust the elevation as needed
              shadowColor: Colors.white, // Set the shadow color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                height: ScreenUtil().setHeight(84),
                width: ScreenUtil().setWidth(335),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: textfieldform,
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 60),
                    hintText: "What evidence you need",
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(25),),
          Row(
            children: [
              SizedBox(width: ScreenUtil().setWidth(25),
              ),
              Text(
                "Per Visit",
                style: GoogleFonts.poppins(
                    color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        
        
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        
        
              Row(
                children: [
                  SizedBox(width: ScreenUtil().setWidth(15),),
                  Radio(
                    value: 1,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                    activeColor: myColor,
                  ),
                  Text(
                    'YES',
                    style:GoogleFonts.poppins(color: Colors.black),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(15),),
                  Radio(
                    value: 2,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                    activeColor: myColor,
                  ),
                  Text(
                    'NO',
                    style: GoogleFonts.poppins(color: Colors.black),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(15),),
                  Radio(
                    value: 3,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                    activeColor: myColor,
                  ),
                  Text(
                    'PARTIALLY',
                    style: GoogleFonts.poppins(color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: ScreenUtil().setHeight(30),),
          Row(
            children: [
              SizedBox(width: ScreenUtil().setWidth(25),
              ),
              Text(
                "Staff Avilablity",
                style: GoogleFonts.poppins(
                    color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        
        
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        
        
              Row(
                children: [
                  SizedBox(width: ScreenUtil().setWidth(15),),
                  Radio(
                    value: 1,
                    groupValue: _radiobutton,
                    onChanged: (value) {
                      setState(() {
                        _radiobutton = value!;
                      });
                    },
                    activeColor: myColor,
                  ),
                  Text(
                    'YES',
                    style: GoogleFonts.poppins(color: Colors.black),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(15),),
                  Radio(
                    value: 2,
                    groupValue: _radiobutton,
                    onChanged: (value) {
                      setState(() {
                        _radiobutton = value!;
                      });
                    },
                    activeColor: myColor,
                  ),
                  Text(
                    'NO',
                    style: GoogleFonts.poppins(color: Colors.black),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(15),),
                  Radio(
                    value: 3,
                    groupValue: _radiobutton,
                    onChanged: (value) {
                      setState(() {
                        _radiobutton = value!;
                      });
                    },
                    activeColor: myColor,
                  ),
                  Text(
                    'PARTIALLY',
                    style: GoogleFonts.poppins(color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: ScreenUtil().setHeight(25),),
          Row(
            children: [
              SizedBox(width: ScreenUtil().setWidth(25),
              ),
              Text(
                "Awareness-Trained",
                style: GoogleFonts.poppins(
                    color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        
        
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        
        
              Row(
                children: [
                  SizedBox(width: ScreenUtil().setWidth(15),),
                  Radio(
                    value: 1,
                    groupValue: _unselect,
                    onChanged: (value) {
                      setState(() {
                        _unselect = value!;
                      });
                    },
                    activeColor: myColor,
                  ),
                  Text(
                    'YES',
                    style: GoogleFonts.poppins(color: Colors.black),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(15),),
                  Radio(
                    value: 2,
                    groupValue: _unselect,
                    onChanged: (value) {
                      setState(() {
                        _unselect = value!;
                      });
                    },
                    activeColor: myColor,
                  ),
                  Text(
                    'NO',
                    style: GoogleFonts.poppins(color: Colors.black),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(15),),
                  Radio(
                    value: 3,
                    groupValue: _unselect,
                    onChanged: (value) {
                      setState(() {
                        _unselect = value!;
                      });
                    },
                    activeColor: myColor,
                  ),
                  Text(
                    'PARTIALLY',
                    style: GoogleFonts.poppins(color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        
          SizedBox(height: ScreenUtil().setHeight(110),),
          Container(
            height: ScreenUtil().setHeight(56),
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

                },
                child: Text(
                  "Add", style: TextStyle(color: Colors.white),)),
          )
        
        ]),
      ),
    ));
  }
}
