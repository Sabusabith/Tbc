import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class primaryContainer extends StatelessWidget {
  primaryContainer(
      {required this.borderRadius,
        required this.Bordercolor,
        required this.text,
        required this.text1,
        required this.textColor,
        required this.text1Color,
        required this.width,
        required this.height,
        required this.text3,
        super.key});

  double borderRadius;
  Color textColor;
  Color text1Color;
  String text;
  String text1;
  Color Bordercolor;
  double height;
  double width;
  String text3;

  @override
  Widget build(BuildContext context) {
    Color myColor = Color(0xFF3EB489);
    return Container(
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: myColor, width: ScreenUtil().setWidth(2) )),
          child: Column(
            children: [
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              Row(
                children: [
                  SizedBox(
                    width: ScreenUtil().setWidth(3),
                  ),
                  CircleAvatar(
                    radius: ScreenUtil().setHeight(30),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(25),),

                  Text(
                    text,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: textColor,
                        fontFamily: 'Inter',
                        fontSize: ScreenUtil().setSp(15),
                        fontWeight: FontWeight.w700,
                        height: ScreenUtil().setHeight(1)),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(50),
                  ),
                  Text(
                    text3,
                    style:
                    TextStyle(
                        fontSize: 12,
                        color: Colors.grey, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              SizedBox(
                height: ScreenUtil().setHeight(5),
              ),
              Row(
                children: [
                  SizedBox(
                    width: ScreenUtil().setWidth(3),
                  ),
                  Text(
                    text1,
                    style: TextStyle(
                        color: text1Color,
                        fontFamily: 'Inter',
                        fontSize: ScreenUtil().setSp(15),
                        letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.w500,
                        height: ScreenUtil().setHeight(1)),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
