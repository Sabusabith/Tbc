
import 'package:flutter/material.dart';

class texttfield extends StatelessWidget {
   texttfield({
     required this.horizontal,
     required this.hintText,
     required this.verticle,






     super.key});

  String hintText;
  double verticle;
  double horizontal;

 TextEditingController username =TextEditingController();

  @override
  Widget build(BuildContext context) {
    Color myColor = Color(0xFF3EB489);
    return GestureDetector(
        onTap: () {
          // FocusScope is used to manage the focus of different input fields
          FocusScope.of(context).requestFocus(FocusNode());
        },

      child:
        Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontal,
            ),
            child: TextFormField(
              controller: username,

              obscureText: false,
              decoration: InputDecoration(
                label:Text(hintText,style: TextStyle(fontStyle: FontStyle.italic),),
                contentPadding:
                EdgeInsets.symmetric(vertical: verticle, horizontal: 10),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    
                    // color: Colors.grey[400],
                   color: myColor
                  ),
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.grey.shade500,
                    )),

              ),
            )),


      );

  }
}
