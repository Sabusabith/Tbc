import 'package:get/get.dart';
import 'package:qhance_uiii/Screens/login.dart';
import 'package:qhance_uiii/Screens/type3/users.dart';
import 'package:qhance_uiii/controllers/api/type3/get_Domain_fromPHc_controller.dart';
import 'package:qhance_uiii/controllers/api/type3/get_user_controller.dart';
import 'package:qhance_uiii/controllers/api/login_controller.dart';
import 'package:qhance_uiii/utils/shared_data.dart';

class SplashController extends GetxController {
  GetUserssController userssController  = Get
  .put(GetUserssController());
  GetDomainFromPHCcontroller ccontroller = Get.put(GetDomainFromPHCcontroller());
  @override
  void onInit() {
    super.onInit();
    checkUserToken();
  }

  void checkUserToken() async {
    var token = await getSavedObject('token');
     var phc = await getSavedObject('phc');
     var phcDetail_id = await getSavedObject('phcdetailid');
    print("token : $token");
    if (token != null) {
userssController.getUsersFromApi(phc);
ccontroller.getDomains(phcDetail_id);

      Get.to(() =>Users()); // Navigate to page7 if token is available
    } else {
      Get.to(() => login()); // Navigate to login screen if token is not available
    }
  }
}
