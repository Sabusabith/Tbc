import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qhance_uiii/Screens/type1/controller/add_user1_controller.dart';
import 'package:qhance_uiii/Screens/type1/controller/getdomains1_controller.dart';
import 'package:qhance_uiii/Screens/type2/controller/addUser_controller.dart';
import 'package:qhance_uiii/Screens/type2/controller/get_domain_controller.dart';
import 'package:qhance_uiii/Screens/type2/controller/get_specialization_controller.dart';
import 'package:qhance_uiii/Screens/type2/domins.dart';
import 'package:qhance_uiii/Screens/type2/model/getDomainFromPHC_model.dart';
import 'package:qhance_uiii/Screens/type3/controller/get_Domain_fromPHc_controller.dart';
import 'package:qhance_uiii/Screens/type3/model/get_users_model.dart';
import 'package:qhance_uiii/helper/colors.dart';

import '../type2/model/getzones_model.dart';


class AddUser1 extends StatefulWidget {
  AddUser1({required this.phcDetailList});
  final List<Phc>? phcDetailList;

  @override
  State<AddUser1> createState() => _AddUserState();
}



class _AddUserState extends State<AddUser1> {




  final GetSpecializationController _specializationController =
      Get.put(GetSpecializationController()); // Initialize the controller
  AddUserController1 controller = Get.put(AddUserController1());
  GetDomainFromPHCcontroller1  phCcontroller2 = Get.put(GetDomainFromPHCcontroller1());
final emailController = TextEditingController();
final passController = TextEditingController();
final phoneController = TextEditingController();
final nameController = TextEditingController();
  @override
  void initState() {
    super.initState();
    // Initialize domainFromPHCcontroller2 inside initState
  
  }
var specialization = '';

 var phcdetail_id = '';
 var phc_tbc_id = '';
  // Track if dropdowns are selected
  bool isSpecializationSelected = false;
  bool isPHCSelected = false;

postData() async {
  // print("Tbc code : ${widget.tbc_code}");
  Map data = {
    'name': nameController.text,
    'email': emailController.text,
    'password': passController.text,
    'phone': '+966${phoneController.text}',
    'status': '1',
    'type': 'Type 3',
    'specialization_id': specialization,
    'phc_detail_id': phcdetail_id,
    'phc_tbc_code_id': phc_tbc_id
  };
  controller.addUserData(context,data);
}



  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    Color myColor = const Color(0xFF518C7E);
    return SafeArea(
        child: Scaffold(
      backgroundColor: background,
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
        title: const Text(
          "Add User",
          style: TextStyle(
              fontSize: 19, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        actions: [
        
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: ScreenUtil().setHeight(34),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
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
                    controller: emailController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: textfieldform,
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 13, vertical: 25),
                      hintText: "Email id",
                      hintStyle: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    style: const TextStyle(color: Colors.black87),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(1),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
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
                    controller: passController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: textfieldform,
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 13, vertical: 25),
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    style: const TextStyle(color: Colors.black87),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(1),
            ),
           
            SizedBox(
              height: ScreenUtil().setHeight(1),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
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
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: textfieldform,
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.white70),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.white70),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 13, vertical: 25),
                      hintText: "Team code",
                      hintStyle: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    style: const TextStyle(color: Colors.black87),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(1),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
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
                    controller: nameController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: textfieldform,
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.white70),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.white70),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 13, vertical: 25),
                      hintText: "Name",
                      hintStyle: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    style: const TextStyle(color: Colors.black87),
                  ),
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                  elevation: 2, // Adjust the elevation as needed
                  shadowColor: Colors.white, // Set the shadow color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: SizedBox(
                    height: 50,
                    width: ScreenUtil().setWidth(335),
                    child: DropdownButtonFormField<Phc>(
  decoration: InputDecoration(
    filled: true,
    fillColor: textfieldform,
    border: InputBorder.none,
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: Colors.white),
      borderRadius: BorderRadius.circular(10.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: Colors.white),
      borderRadius: BorderRadius.circular(10.0),
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 13),
  ),
  style: const TextStyle(color: Colors.black87, fontSize: 16),
  items: widget.phcDetailList?.map((phc) {
    return DropdownMenuItem<Phc>(
      value: phc,
      child: Text(phc.phcName.toString()), // Change to whatever property represents the name of the PHC
    );
  }).toList(),
  onChanged: (Phc? newValue) {
    // Add functionality here when an item is selected
    print("new value : $newValue");
    setState(() {
     
      phc_tbc_id = newValue!.phcTbcCode![0].id!;
      phcdetail_id = newValue.id!;
       print("Tbc Code id :$phc_tbc_id");
              print("phc detail id :$phcdetail_id");
               isPHCSelected = true;

    });
    // You can access the selected PHC details using newValue
  },
  hint: Text(
    "Select PHC",
    style: TextStyle(
      color: Colors.grey[500],
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
  ),
),

                  )),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(1),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                  elevation: 2, // Adjust the elevation as needed
                  shadowColor: Colors.white, // Set the shadow color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: SizedBox(
                    height: 50,
                    width: ScreenUtil().setWidth(335),
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: textfieldform,
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 13,
                        ),
                      ),
                      style: const TextStyle(color: Colors.black87,fontSize: 16),
                      items: _specializationController
                          .model!.successResponse.data
                          .map<DropdownMenuItem<String>>((data) {
                        return DropdownMenuItem<String>(
                          value: data.id.toString(),
                          child: Text(data.speciality.toString()),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        // Add functionality here when an item is selected
                        print("new value : $newValue");
                        setState(() {
                           specialization = newValue!;
                           isSpecializationSelected = true;
                        });
                       
                      },
                      hint: Text(
                        "Specialization",
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(1),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 2, // Adjust the elevation as needed
                    shadowColor: Colors.white, // Set the shadow color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: SizedBox(
                      width: ScreenUtil().setWidth(60),
                      child: TextFormField(
                        controller: TextEditingController(text: "+966"),
                        decoration: InputDecoration(
                          filled: true,
                          enabled: false,
                          fillColor: textfieldform,
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: background),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: background),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 13,
                          ),
                        ),
                        style: const TextStyle(color: Colors.black87),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(1),
                ),
                Card(
                  elevation: 2, // Adjust the elevation as needed
                  shadowColor: Colors.white, // Set the shadow color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: SizedBox(
                    height: ScreenUtil().setHeight(57),
                    width: ScreenUtil().setWidth(260),
                    child: TextFormField(
                      controller: phoneController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: textfieldform,
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: background),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: background),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 13, vertical: 25),
                        hintText: "Enter Mobile Number",
                        hintStyle: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      style: const TextStyle(color: Colors.black87),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ScreenUtil().setHeight(27),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(57),
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
              if (isPHCSelected && isSpecializationSelected) {
                      postData();
                    } else {
                      // Show message or handle appropriately
 ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('please select the fields'),
              backgroundColor: Colors.red,
            ),
          );                    }
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    ));
  }
}
