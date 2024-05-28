import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qhance_uiii/Screens/type2/controller/deleteusercontroller.dart';
import 'package:qhance_uiii/Screens/type2/controller/getAllUsersController.dart';
import 'package:qhance_uiii/helper/colors.dart';

class Userslist extends StatelessWidget {
  Userslist({super.key});

  final GetAllUsersController usersController = Get.put(GetAllUsersController());
  final DeleteUserController controller = Get.put(DeleteUserController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white),
        ),
        backgroundColor: myColor,
        title: Text(
          "Users",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      backgroundColor: background,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Obx(
          () {
            if (usersController.isloading.value) {
              return Center(child: CircularProgressIndicator(color: myColor));
            } else {
              // Filter users with status == 1
              final filteredUsers = usersController.model?.successResponse?.data
                  ?.where((user) => user.status == 1)
                  .toList();

              return ListView.builder(
                itemCount: filteredUsers?.length ?? 0,
                itemBuilder: (context, index) => Column(
                  children: [
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      width: size.width,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: myColor, width: 1.5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  filteredUsers?[index].name ?? "No UserData",
                                  style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  filteredUsers?[index].email ?? "No UserData",
                                  style: TextStyle(color: Colors.grey.shade700),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: InkWell(
                              onTap: () {
                                _showDeleteConfirmationDialog(
                                  context,
                                  filteredUsers?[index].id ?? "0",
                                );
                              },
                              child: Icon(CupertinoIcons.delete, color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }

  void _showDeleteConfirmationDialog(BuildContext context, String userId) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Delete User?",
            style: TextStyle(color: Colors.grey.shade800),
          ),
          content: Text(
            "Do you want to delete this user?",
            style: TextStyle(color: Colors.grey.shade800),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                "Cancel",
                style: TextStyle(color: myColor),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text(
                "Delete",
                style: TextStyle(color: myColor),
              ),
              onPressed: () async {
                await controller.deleteUser(userId,context);
                Get.find<GetAllUsersController>().getAllusers();
                Navigator.of(context).pop();
                Get.back();
              },
            ),
          ],
        );
      },
    );
  }
}
