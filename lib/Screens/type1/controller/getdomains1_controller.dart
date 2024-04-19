import 'package:get/get.dart';
import 'package:qhance_uiii/Screens/type2/model/getDomainFromPHC_model.dart';
import 'package:qhance_uiii/Screens/type3/model/getDomainFromPHC_model.dart';

import '../../../utils/api_provider.dart';
import '../../../utils/shared_data.dart';

class GetDomainFromPHCcontroller1 extends GetxController {

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
   
  }

  RxBool isloading = true.obs;

  GetDomainFromPhcModel2? model;

  getDomains(phcDetail_id) async {
    isloading(true);
    var url = "https://tbc.d-note.com/api/getDomainFromPhc?";
   var token = await getSavedObject('token');
    print("phc detail id from domain $phcDetail_id");
    Map<String, String> queryParams = {
      'phc_detail_id': phcDetail_id.toString(),
    };
    var response =
        await ApiProvider().get(url, token: token, queryParams: queryParams);
    if (response.statusCode == 200 &&
        response.data["SuccessResponse"]['statusCode'] == true) {
    

      isloading(false);
      model = GetDomainFromPhcModel2.fromJson(response.data);
                print("Domain details : ${model?.successResponse.data?[0].domain.domainName}");
    } else {
      Get.snackbar("No Available Domains", '');
    }
  }
}
