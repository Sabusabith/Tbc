import 'package:get/get.dart';
import 'package:qhance_uiii/Screens/login.dart';
import 'package:qhance_uiii/Screens/type3/users.dart';
import 'package:qhance_uiii/controllers/api/get_user_controller.dart';
import 'package:qhance_uiii/controllers/api/login_controller.dart';
import 'package:qhance_uiii/utils/shared_data.dart';

class SplashController extends GetxController {
  GetUserssController userssController  = Get
  .put(GetUserssController());
  @override
  void onInit() {
    super.onInit();
    checkUserToken();
  }

  void checkUserToken() async {
    var token = await getSavedObject('token');
     var phc = await getSavedObject('phc');
    print("token : $token");
    if (token != null) {
userssController.getUsersFromApi(phc);
      Get.to(() => page7()); // Navigate to page7 if token is available
    } else {
      Get.to(() => login()); // Navigate to login screen if token is not available
    }
  }
}
