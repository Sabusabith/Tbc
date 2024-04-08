import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../helper/colors.dart';

class ActionPlanUpdate extends StatelessWidget {
  ActionPlanUpdate(
      {super.key,
      required this.assigned,
      required this.task_name,
      required this.details,
      required this.coassigned,
      required this.days,
      required this.start_date,
      required this.end_date});
  var task_name;
  var assigned;
  var coassigned;
  var details;
  var days;
  DateTime start_date;
  DateTime end_date;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
        title: const Text(
          "Action Plan Update",
          style: TextStyle(fontSize: 19, color: Colors.white),
        ),
        backgroundColor: myColor,
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: myColor, width: 1.5)),
                  height: 160,
                  width: size.width,
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: SizedBox(
                          width: size.width,
                          height: 80,
                          child: Text(
                            task_name ?? "No Data",
                            style: TextStyle(
                              height: 1.3,
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 4,
                            textAlign: TextAlign.start,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Assigned to : ",
                                  style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Text(
                              assigned ?? "Person 1",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                              maxLines: 1,
                              textAlign: TextAlign.start,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                    height: 350,
                    width: size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: myColor, width: 1.5)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            task_name ?? "No Data",
                            style: TextStyle(
                              height: 1.3,
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 4,
                            textAlign: TextAlign.start,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text("Start Date :  ",style: TextStyle(color: Colors.grey.shade800),),
                              Text(
                                DateFormat('yyyy-MM-dd').format(
                                  start_date,
                                ),
                                style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text("End Date   :  ",style: TextStyle(color: Colors.grey.shade800),),
                              Text(
                                DateFormat('yyyy-MM-dd').format(
                                  end_date,
                                ),
                                style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                         Padding(
                           padding: const EdgeInsets.only(left: 20),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Text(
                                 "Assigned to :  ",
                                 style: TextStyle(
                                     color: Colors.grey.shade700,
                                     fontSize: 13),
                               ),
                               
                                  Text(
                           assigned ?? "Person 1",
                           style: TextStyle(
                             fontSize: 14,
                             color: Colors.black,
                             fontWeight: FontWeight.w500,
                           ),
                           maxLines: 1,
                           textAlign: TextAlign.start,
                           softWrap: true,
                           overflow: TextOverflow.ellipsis,
                         )
                             ],
                           ),
                         ),
                         SizedBox(height: 10,),
                            Padding(
                           padding: const EdgeInsets.only(left: 20),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Text(
                                 "Co-assigned to :  ",
                                 style: TextStyle(
                                     color: Colors.grey.shade700,
                                     fontSize: 13),
                               ),
                               
                                  Text(
                           coassigned ?? "Person 1",
                           style: TextStyle(
                             fontSize: 14,
                             color: Colors.black,
                             fontWeight: FontWeight.w500,
                           ),
                           maxLines: 1,
                           textAlign: TextAlign.start,
                           softWrap: true,
                           overflow: TextOverflow.ellipsis,
                         )
                             ],
                           ),
                         ),
                       
                      ],
                    )),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  height: 50,
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: myColor, width: 1.5)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Dependent Days",
                        style: TextStyle(color: Colors.grey.shade800),
                      ),
                      Spacer(),
                      Text(
                        days.toString(),
                        style: TextStyle(color: Colors.grey.shade800),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
