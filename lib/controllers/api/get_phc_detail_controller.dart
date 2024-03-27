import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:qhance_uiii/model/phc_details_model.dart';
import 'package:qhance_uiii/utils/api_configs.dart';
import 'package:qhance_uiii/utils/api_provider.dart';
import 'package:qhance_uiii/utils/shared_data.dart';

// This api called in Mobile screen reception activities
class GetPhcDetailsController extends GetxController {
  RxBool isLoading = true.obs;

  GetPhcDetailModel? model;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  getPhcDetails(id) async {
    // var id = await getSavedObject('id');
    var token = await getSavedObject('token');
    Map<String, String> queryParams = {
      'zone_id': id.toString(),
    };
    try {
      isLoading(true);
      var url = AppConstants.baseUrl + '/api/getPhcDetailsFromZone?';

      var response =
          await ApiProvider().get(url, token: token, queryParams: queryParams);

      if (response.statusCode == 200 &&
          response.data["SuccessResponse"]['statusCode'] == true) {
        isLoading(false);

        model = GetPhcDetailModel.fromJson(response.data);

        print(
            'phc details response ============> ${model?.successResponse.data}');
      } else {
        response.statusMessage;
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
