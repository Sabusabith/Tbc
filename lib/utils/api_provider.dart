import 'package:dio/dio.dart';
import 'package:get/route_manager.dart';
import 'package:qhance_uiii/Screens/login.dart';

import 'shared_data.dart';

class ApiProvider {
  Dio dio = Dio();

  ApiProvider() {
    dio = Dio();

    // Add interceptor to handle 401 Unauthorized errors
    dio.interceptors.add(InterceptorsWrapper(onError: (DioError error, ErrorInterceptorHandler handler) async {
      if (error.response != null && error.response!.statusCode == 401) {
        // Clear token and navigate to login
        await clearSavedObject('token');
          await clearSavedObject('type');
        await clearSavedObject('phc');
        Get.offAll(() => login());
      }
      handler.next(error); // Continue processing the error
    }));
  }

  Future<Response<dynamic>> get(String url, {Map<String, dynamic>? queryParams, String? token}) async {
    try {
      print("api url ===========> $url");

      // Set authorization header if token is provided
      dio.options.headers["Authorization"] = "Bearer $token";

      return await dio.get(
        url,
        queryParameters: queryParams,
      );
    } catch (error) {
      throw error;
    }
  }

  Future<Response<dynamic>> post(String url, dynamic data, {String? token}) async {
    try {
      print("api url ===========> $url");

      // Set authorization header if token is provided
      dio.options.headers["Authorization"] = "Bearer $token";

      return await dio.post(url, data: data);
    } catch (error) {
      throw error;
    }
  }

  Future<Response<dynamic>> put(String url, dynamic data, {Map<String, dynamic>? headers, String? token}) async {
    try {
      print("api url ===========> $url");

      // Set authorization header if token is provided
      dio.options.headers["Authorization"] = "Bearer $token";

      return await dio.put(url, data: data, options: Options(headers: headers));
    } catch (error) {
      throw error;
    }
  }
}
