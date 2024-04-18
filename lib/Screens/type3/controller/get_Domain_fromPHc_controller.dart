import 'package:get/get.dart';
import 'package:qhance_uiii/Screens/type3/model/getDomainFromPHC_model.dart';

import '../../../utils/api_provider.dart';
import '../../../utils/shared_data.dart';

class GetDomainFromPHCcontroller extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getData();
  }
  RxBool isloading = true.obs;

  getData() async {
    var phcdetailid = await getSavedObject("phcdetailid");

   getDomains(phcdetailid);
  }

  GetDomainFromPhcModel? model;

  getDomains(phcDetail_id) async {
    isloading(true);
    var url = "https://tbc.d-note.com/api/getDomainFromPhc?";
    var token = await getSavedObject('token');

    Map<String, String> queryParams = {
      'phc_detail_id': phcDetail_id.toString(),
    };
    var response =
        await ApiProvider().get(url, token: token, queryParams: queryParams);

    if (response.statusCode == 200 &&
        response.data["SuccessResponse"]['statusCode'] == true) {
            isloading(false);
      model = GetDomainFromPhcModel.fromJson(response.data);
      print(
          "Domain details : ${model?.successResponse.data?[0].domain.domainName}");
    }
    else{
       Get.snackbar("Oooops...", "server down..!");
    }
  }
}
