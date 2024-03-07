import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class elevatedButton extends StatelessWidget {
   elevatedButton({
     required this.text,
     required this.borderRadius,

    super.key});


   double borderRadius;
   String text;
  @override
  Widget build(BuildContext context) {
    Color myColor = Color(0xFF3EB489);
    return  Container(
      width: ScreenUtil().setWidth(260),
      height: ScreenUtil().setHeight(50),
      decoration: BoxDecoration(
        color: Colors.teal[600],
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.20000000298023224),
              offset: Offset(0, 3),
              blurRadius: 3)
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            height: 7,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
        ],
      ),

    );
  }
}
