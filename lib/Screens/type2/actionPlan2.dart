// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/route_manager.dart';
// import 'package:qhance_uiii/Screens/type2/actionPlan_update2.dart';
// import 'package:qhance_uiii/Screens/type2/controller/get_actionPlan2_controller.dart';
// import 'package:qhance_uiii/Screens/type3/action_plan_update.dart';
// import 'package:qhance_uiii/Screens/type3/controller/getActionPlan_controller.dart';

// import '../../helper/colors.dart';

// class ActivitiesWithActionPlan2 extends StatelessWidget {
//   ActivitiesWithActionPlan2({super.key});
// GetActionPlanController2 controller = Get.put(GetActionPlanController2());
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//         appBar: AppBar(
//           leading: IconButton(
//             icon: const Icon(
//               Icons.arrow_back,
//               color: Colors.white,
//             ),
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//           ),
//           title: const Text(
//             "Activities with Action Plan",
//             style: TextStyle(fontSize: 19, color: Colors.white),
//           ),
//           backgroundColor: myColor,
//         ),
//         body: SizedBox(
//           width: size.width,
//           height: size.height,
//           child:Obx((){
//             if (controller.isloading.value) {
//              return  Center(child: CircularProgressIndicator(color: myColor,));
//             } else {
//               if (controller.model?.successResponse.data?.isEmpty ?? true) {
//                 return Center(
//                   child: Text(
//                     "No Action Plans",
//                     style: TextStyle(fontSize: 18,color: Colors.grey.shade800),
//                   ),
//                 );
//               }else{
              
//              return  ListView.builder(
//               itemCount: controller.model?.successResponse.data?.length??0,
//               itemBuilder: ((context, index) => Column(
//                     children: [
//                       SizedBox(
//                         height: 20,
//                       ),
//                       GestureDetector(onTap: (){
                        
//                       },
//                         child: Container(
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(15),
//                               border: Border.all(color: myColor, width: 1.5)),
//                           height: 160,
//                           width: size.width,
//                           margin: EdgeInsets.symmetric(horizontal: 25),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               SizedBox(
//                                 height: 15,
//                               ),
//                               Padding(
//                                 padding:  EdgeInsets.symmetric(horizontal: 25),
//                                 child: GestureDetector(onTap: (){
//                               var task_name = controller.model?.successResponse.data?[index].actionPlan;
//                               var assigned = controller.model?.successResponse.data?[index].assignedTo?.name??"Person 1";
//                               var days = controller.model?.successResponse.data?[index].dependentDays;
//                               var details = controller.model?.successResponse.data?[index].statusProgression;
//                                var co_assign = controller.model?.successResponse.data?[index].coAssignedTo?.name??"Person 2";
//                                 var startdateObject = controller
//                                 .model
//                                 ?.successResponse
//                                 .data?[index].startDate;
//                                     var enddateObject = controller
//                                 .model
//                                 ?.successResponse
//                                 .data?[index].endDate;
                                
//                                  DateTime? startdate = startdateObject != null
//                                 ? DateTime.parse(startdateObject.toString())
//                                 : null;
//                                   DateTime? enddate = enddateObject != null
//                                 ? DateTime.parse(enddateObject.toString())
//                                 : null;
//                                   Get.to(ActionPlanUpdate2(coassigned: co_assign,task_name: task_name,assigned:assigned,days: days,details: details,start_date: startdate ?? DateTime.now(),end_date: enddate??DateTime.now(),),);
//                                 },
//                                   child: SizedBox(
//                                     width: size.width,
//                                     height: 80,
//                                     child: Text(
//                                       controller.model?.successResponse.data?[index].actionPlan??"No Action Plan",
//                                       style: TextStyle(
//                                         fontSize: 14,
//                                         color: Colors.black,
//                                         fontWeight: FontWeight.w500,
//                                       ),
//                                       maxLines: 4,
//                                       textAlign: TextAlign.start,
//                                       softWrap: true,
//                                       overflow: TextOverflow.ellipsis,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Column(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Padding(
//                                     padding:
//                                         const EdgeInsets.symmetric(horizontal: 25),
//                                     child: Row(
//                                       mainAxisAlignment: MainAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           "Assigned to : ",
//                                           style: TextStyle(
//                                               color: Colors.grey.shade700,
//                                               fontSize: 13),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 5,
//                                   ),
//                                   Padding(
//                                     padding:
//                                         const EdgeInsets.symmetric(horizontal: 25),
//                                     child: Text(
//                                        controller.model?.successResponse.data?[index].assignedTo?.name??'No Data',
//                                       style: TextStyle(
//                                         fontSize: 14,
//                                         color: Colors.black,
//                                         fontWeight: FontWeight.w500,
//                                       ),
//                                       maxLines: 1,
//                                       textAlign: TextAlign.start,
//                                       softWrap: true,
//                                       overflow: TextOverflow.ellipsis,
//                                     ),
//                                   ),
//                                 ],
//                               )
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   )),
//             );}
//             }
            
//    } )
//         ));
//   }
// }
