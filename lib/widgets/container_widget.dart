import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 Color container=Color(0xFF518C7E);
 Color text1 = Color(0xFF1E1E1E);
class customcontainer extends StatelessWidget {
  customcontainer(
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

    return Container(

          child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: container, width: ScreenUtil().setWidth(1.5),)),
                child: Column(
          children: [
            SizedBox(
              height: ScreenUtil().setHeight(13),
            ),
            Row(
              children: [
                SizedBox(
                  width: ScreenUtil().setWidth(3),
                ),
                Text(
                  text,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: textColor,
                      fontFamily: 'Inter',
                      fontSize: ScreenUtil().setSp(15),
                      fontWeight: FontWeight.w700,
                      height: ScreenUtil().setHeight(1),),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(130),
                ),
                Text(
                  text3,
                  style:
                      TextStyle( fontSize: 12,color: Colors.grey, fontWeight: FontWeight.w700),
                )
              ],
            ),
            SizedBox(
              height: ScreenUtil().setHeight(8),
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
                      fontSize: ScreenUtil().setSp(14),
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.w500,
                      height: ScreenUtil().setHeight(1),),
                ),
              ],
            ),
          ],
                ),
              ),
        );
  }
}
