import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:intl/intl.dart';
import 'package:qhance_uiii/Screens/type2/controller/add_actionplan2_controller.dart';
import 'package:qhance_uiii/Screens/type3/model/get_users_model.dart';

import '../../helper/colors.dart';

class ActionPlanUpdate2 extends StatelessWidget {
  ActionPlanUpdate2(
      {required this.phcdetailid,
      required this.taskprogressionId,
      required this.taskdetailid});
  final actionplancontroller = TextEditingController();
  final evidenceController = TextEditingController();
  var taskprogressionId;
  var phcdetailid;
  var taskdetailid;

  AddActionPlanController controller = Get.put(AddActionPlanController());
  postData(BuildContext context) {
    print("phc detail id = $phcdetailid");
    print("Task progression = $taskprogressionId");
    print("task detail id  = $taskdetailid");

    if (actionplancontroller.text.isEmpty || evidenceController.text.isEmpty) {
      // Show an error message indicating that all fields are required
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please fill in all fields'),
          backgroundColor: Colors.red,
        ),
      );
      return; // Exit the method if any field is empty
    }
    Map data = {
      'action_plan': actionplancontroller.text,
      'task_progression_id': taskprogressionId,
      'task_detail_id': taskdetailid,
      'phc_detail_id': phcdetailid,
      'evidence_of_compliance': evidenceController.text
    };
    controller.addActionPlan(data, context);
  }

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
                    width: size.width,
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                      controller: evidenceController,
                      style: TextStyle(color: Colors.grey.shade800),
                      maxLines: 5,
                      decoration: InputDecoration(
                          hintText: " Evidence of Compliance",
                          hintStyle: TextStyle(color: Colors.grey.shade600),
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: myColor, width: 1.5)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                              borderSide:
                                  BorderSide(color: myColor, width: 1.5))),
                    )),
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                    width: size.width,
                    child: TextField(
                      controller: actionplancontroller,
                      style: TextStyle(color: Colors.grey.shade800),
                      maxLines: 10,
                      decoration: InputDecoration(
                          hintText: " Action Plan",
                          hintStyle: TextStyle(color: Colors.grey.shade600),
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: myColor, width: 1.5)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                              borderSide:
                                  BorderSide(color: myColor, width: 1.5))),
                    )),
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: InkWell(
                  onTap: () {
                    postData(context);
                  },
                  child: Container(
                    height: 50,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: myColor,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: myColor, width: 1.5)),
                    child: Center(
                      child: Text(
                        "Update",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
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
