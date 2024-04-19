import 'package:get/get.dart';
import 'package:qhance_uiii/Screens/login.dart';
import 'package:qhance_uiii/Screens/type1/zones1.dart';
import 'package:qhance_uiii/Screens/type2/Zones_2.dart';
import 'package:qhance_uiii/Screens/type3/users.dart';
import 'package:qhance_uiii/Screens/type3/controller/get_Domain_fromPHc_controller.dart';
import 'package:qhance_uiii/Screens/type3/controller/get_user_controller.dart';
import 'package:qhance_uiii/controllers/api/login_controller.dart';
import 'package:qhance_uiii/utils/shared_data.dart';

class SplashController extends GetxController {
  GetUserssController userssController  = Get
  .put(GetUserssController());
  // GetDomainFromPHCcontroller ccontroller = Get.put(GetDomainFromPHCcontroller());
  @override
  void onInit() {
    super.onInit();
    checkUserToken();
  }

  void checkUserToken() async {
    var token = await getSavedObject('token');
    var type = await getSavedObject('type');
     var phc = await getSavedObject('phc');
     var phcDetail_id = await getSavedObject('phcdetailid');
    print("token : $token");
    print("User Type : $type");


if (token != null && type == 'Type 1') {
  Get.to(Zones1());
}
   else if (token != null && type == 'Type 2') {
      Get.to(Zones());

    } else if(token != null && type  == 'Type 3'){
      userssController.getUsersFromApi(phc);
// ccontroller.getDomains(phcDetail_id);

      Get.to(() =>Users()); // Navigate to page7 if token is available
  // Navigate to login screen if token is not available
    }else{
    Get.to(() => login()); 
    }
  }
}
