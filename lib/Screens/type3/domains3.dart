import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:qhance_uiii/Screens/type3/activities.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qhance_uiii/controllers/api/login_controller.dart';
import 'package:qhance_uiii/Screens/type3/controller/get_Domain_fromPHc_controller.dart';
import 'package:qhance_uiii/Screens/type3/controller/get_user_controller.dart';
import 'package:qhance_uiii/main.dart';
import 'package:qhance_uiii/utils/shared_data.dart';

import '../../helper/colors.dart';

class Domains3 extends StatelessWidget {
  GetDomainFromPHCcontroller ccontroller =
      Get.put(GetDomainFromPHCcontroller());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
              backgroundColor: myColor,
              title: Text(
                "Domains",
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(15), color: Colors.white),
              ),
              // actions: [
              //   Row(
              //     children: [
              //   Image.asset('assets/go.png',height: 25,),
              //       SizedBox(width: ScreenUtil().setWidth(10))
              //     ],
              //   )
              // ],
            ),
            backgroundColor: background,
            body: SizedBox(
              width: size.width,
              height: size.height,
              child: Obx((){
                 if (ccontroller.isloading.value) {
              return Center(
                child: CircularProgressIndicator(color: myColor,),
              );
            }
            // Show domain list once data is fetched
            else {
              // Check if the domain list is empty
              if (ccontroller.model?.successResponse?.data?.isEmpty ?? true) {
                // Display a message indicating that no domains are available
                return Center(
                  child: Text(
                    "No available Domains",
                    style: TextStyle(fontSize: 18,color: Colors.grey.shade800),
                  ),
                );
              } else {
                
               return   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Select Your Domains",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade800),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 15, right: 15, top: 30),
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 1,
                              crossAxisCount: 2, // Number of columns
                              crossAxisSpacing: 20.0, // Spacing between columns
                              mainAxisSpacing:
                                  20.0, // Spacing between rows Spacing between rows
                            ),
                            itemCount:
                                ccontroller.model?.successResponse?.data?.length ??
                                    0,
                            itemBuilder: (context, index) => InkWell(
                              onTap: () async {
                             var phcdetailId = ccontroller.model?.successResponse?.data?[index].phcDetailId;   
                           var data = ccontroller.model?.successResponse?.data?[index].domain?.taskDetail;
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Activities(
                                        taskDetails: data,
                                        phcdetailid: phcdetailId,
                                            )));
                              },
                              child: Container(
                                width: ScreenUtil().setWidth(200), // Fixed width
                                height: ScreenUtil().setHeight(200), // Fixe
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: myColor,
                                      width: ScreenUtil().setWidth(1.5)),
                                  borderRadius: BorderRadius.circular(
                                      ScreenUtil().setWidth(15)),
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
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 25),
                                    child: Text(
                                      ccontroller.model?.successResponse?.data?[index].domain?.domainName
                                              .toString() ??
                                          "No Domains Found",
                                      textAlign: TextAlign.center,
                                      maxLines: 4,
                                      style: TextStyle(
                                        color: myColor,
                                        fontFamily: 'Inter',
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        height: 1.5,
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
              );}}
  }),
              ),
            ));
  }
}
