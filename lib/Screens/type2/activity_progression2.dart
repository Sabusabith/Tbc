import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:qhance_uiii/Screens/type2/actionPlan2.dart';
import 'package:qhance_uiii/Screens/type2/controller/get_actionPlan2_controller.dart';
import 'package:qhance_uiii/Screens/type2/controller/add_activity.dart';
import 'package:qhance_uiii/Screens/type2/item_screen.dart';
import 'package:qhance_uiii/Screens/type3/activitieswithActionplan.dart';
import 'package:qhance_uiii/Screens/type3/controller/UpdateActivityProgression_controller.dart';
import 'package:qhance_uiii/Screens/type3/controller/getActionPlan_controller.dart';
import 'package:qhance_uiii/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qhance_uiii/utils/toast.dart';

import '../../helper/colors.dart';

class ActivityProgression2 extends StatefulWidget {
  ActivityProgression2({required this.domainid});
var domainid;
  @override
  
  State<ActivityProgression2> createState() => _ActivityProgressionState();
}

class _ActivityProgressionState extends State<ActivityProgression2> {
  
   final taskcontroller = TextEditingController();
  final evidenccecontroller = TextEditingController();
ItemController2 controller = Get.put(ItemController2());
GetActionPlanController2 actionPlanController = Get.put(GetActionPlanController2());


  int _radiobutton = 0;
  int _unselect = 0;
  int selectedindex = 0;
  DateTime? startDate;
  DateTime? endDate;

  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? pickedStartDate = await showDatePicker(
      context: context,
      initialDate: startDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (pickedStartDate != null && pickedStartDate != startDate) {
      setState(() {
        startDate = pickedStartDate;
      });
    }
  }

 Future<void> _selectEndDate(BuildContext context) async {
  final DateTime? pickedEndDate = await showDatePicker(
    context: context,
    initialDate: endDate ?? startDate ?? DateTime.now(),
    firstDate: startDate ?? DateTime.now(),
    lastDate: DateTime(2101),
  );
  if (pickedEndDate != null && pickedEndDate != endDate) {
    setState(() {
      endDate = pickedEndDate;
    });
  }
}

void passData() {
  print('domain id ::: ${widget.domainid}');
  // Check if any of the fields are empty
  if (taskcontroller.text.isEmpty ||
      evidenccecontroller.text.isEmpty 
    ) {
    // Show an error message indicating that all fields are required
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Please fill in all fields'),
        backgroundColor: Colors.red,
      ),
    );
    return; // Exit the method if any field is empty
  }
  

  // If all fields are filled, proceed with adding the data
  Map<String, dynamic> data = {
    'task_name': taskcontroller.text,
    'domain_id': widget.domainid,
    'evidence_of_compliance': evidenccecontroller.text,
    'start_date': startDate,
    'end_date': endDate,
    'per_visit': selectedindex,
    'staff_availability': _radiobutton,
    'awareness_trained': _unselect
  };

  controller.addItem(data, context);
}




  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: myColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Activity Progression",
          style: GoogleFonts.inter(
              fontSize: 19, color: Colors.white, fontWeight: FontWeight.w600),
        ),
       
     
      ),
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: ScreenUtil().setHeight(24),
          ),
          Padding(
            padding:  EdgeInsets.all(13.0),
            child: Card(
              elevation: 2, // Adjust the elevation as needed
              shadowColor: Colors.white, // Set the shadow color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: SizedBox(
                height: ScreenUtil().setHeight(57),
                width: ScreenUtil().setWidth(335),
                child: TextFormField(
              controller: taskcontroller,
                  decoration: InputDecoration(
                    hintText: 'Activity Name',
                    
                    focusedBorder:OutlineInputBorder(
                      borderSide:  BorderSide(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(10.0),
                    ) ,
                    filled: true,
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderSide:  BorderSide(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 18),
                  
                    hintStyle: TextStyle(
                   
                      color: Colors.grey[400],
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: const TextStyle(color: Colors.black87),
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
              child: SizedBox(
           
                child: TextFormField(
                  maxLines: 4,
                  controller: evidenccecontroller,
                  decoration: InputDecoration(
                    
                    filled: true,
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(10.0),
                    ) ,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                 
                    hintStyle: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: const TextStyle(color: Colors.black87),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
  Column(
  children: [
    Row(
      children: [
        SizedBox(width: 25),
        Text(
          "Start Date",
          style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
        ),
       // Display selected start date
      ],
    ),
    Padding(
      padding: const EdgeInsets.all(13.0),
      child: Card(
        elevation: 2,
        shadowColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: SizedBox(
          child: TextFormField(
            
            readOnly: true,
            controller: TextEditingController(text: startDate != null ? "${startDate!.toLocal()}".split(' ')[0] : ""),
            decoration: InputDecoration(
              suffixIcon: GestureDetector(onTap: () =>  _selectStartDate(context),child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.calendar_today,),
              )),
              filled: true,
              fillColor: Colors.white,
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(10.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(10.0),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              hintText: "Select start date",
              hintStyle: TextStyle(
                color: Colors.grey[800],
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            style: const TextStyle(color: Colors.black87),
          ),
        ),
      ),
    ),
       SizedBox(height: 20,),
    Row(
      children: [
        SizedBox(width: 25),
        Text(
          "End Date",
          style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
        ),
    
      ],
    ),
    Padding(
      padding: const EdgeInsets.all(13.0),
      child: Card(
        elevation: 2,
        shadowColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: SizedBox(
          child: TextFormField(
            readOnly: true,
            controller: TextEditingController(text: endDate != null ? "${endDate!.toLocal()}".split(' ')[0] : ""),
            decoration: InputDecoration(
              suffixIcon:GestureDetector(onTap: () => _selectEndDate(context),child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.calendar_today),
              )) ,
              filled: true,
              fillColor: Colors.white,
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(10.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(10.0),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              hintText: "Select end date",
              hintStyle: TextStyle(
                color: Colors.grey[800],
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            style: const TextStyle(color: Colors.black87),
          ),
        ),
      ),
    ),
  ],
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
                    groupValue: selectedindex,
                    onChanged: (value) {
                      setState(() {
                      selectedindex = value!;
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
                    groupValue:selectedindex,
                    onChanged: (value) {
                      setState(() {
                          selectedindex = value!;
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
                    groupValue:selectedindex,
                    onChanged: (value) {
                      setState(() {
                       selectedindex = value!;
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
        
          SizedBox(height: ScreenUtil().setHeight(45),),
          SizedBox(
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
                  passData();
                },
                child: const Text(
                  "Add", style: TextStyle(color: Colors.white),)),
          ),
           SizedBox(height: 40,),
        ]),
      ),
    ));
  }
}
