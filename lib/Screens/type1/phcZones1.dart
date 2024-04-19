import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qhance_uiii/Screens/type1/AddUser1.dart';
import 'package:qhance_uiii/Screens/type1/controller/getdomains1_controller.dart';
import 'package:qhance_uiii/Screens/type1/domain1.dart';
import 'package:qhance_uiii/Screens/type2/adduser.dart';
import 'package:qhance_uiii/Screens/type2/controller/get_domain_controller.dart';
import 'package:qhance_uiii/Screens/type2/domins.dart';
import 'package:qhance_uiii/Screens/type2/model/getzones_model.dart';
import 'package:qhance_uiii/Screens/type3/controller/get_Domain_fromPHc_controller.dart';

import '../../helper/colors.dart';
import '../../widgets/container_widget.dart';
import '../type3/model/get_users_model.dart';

class PhcZones1 extends StatelessWidget {
 PhcZones1({required this.zoneName,required this.phcDetailList});
var zoneName;
  final List<Phc>? phcDetailList;
 GetDomainFromPHCcontroller1 ccontroller2 = Get.put(GetDomainFromPHCcontroller1());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              actions: [
               GestureDetector(onTap: (){
                 Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>  AddUser1(phcDetailList: phcDetailList,)));
               },child: Icon(Icons.add,color: Colors.white,size: 30,)),
                const SizedBox(
                  width: 10,
                )
              ],
              backgroundColor: myColor,
              title: Text(
                "Primary Health care($zoneName Zone)",
                style: GoogleFonts.inter(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
            ),
            backgroundColor: background,
            body: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: phcDetailList?.length ?? 0,
                      itemBuilder: (context, index) {
                                      for (var phcTbcCode in phcDetailList?[index].phcTbcCode ?? []) {
                                        return     Padding(
                        padding: EdgeInsets.all(ScreenUtil().setWidth(8.0)),
                        child: InkWell(
                          onTap: () {
                      
                           ccontroller2.getDomains(phcDetailList?[index].id);
                           Get.to(Domains1());
                          },

                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: customcontainer(
                              text4: phcTbcCode.tbcCode ?? "00000000000",
                              text3: "care code",
                              borderRadius: ScreenUtil().setWidth(12),
                              Bordercolor: Colors.deepOrange,
                              text1: "Primary Health Care Name",
                              textColor: Colors.black87,
                              width: ScreenUtil().setWidth(333),
                              height: ScreenUtil().setHeight(80),
                              text: phcDetailList?[index].phcName.toString()??"No Phc",
                              text1Color: Colors.grey,
                            ),
                          ),
                        ),
                        );
                                      }
  })
                  ),
                ],
              ),
            )));
  }
}
