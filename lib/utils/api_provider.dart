import 'package:dio/dio.dart';

class ApiProvider {
  Dio dio = Dio();

  ApiProvider() {
    dio = Dio();
  }

  Future<Response> get(String url) async {
    try {
          print("api url ===========> $url");
      return await dio.get(url);
    } catch (error) {
  // print("error from api provider");
      throw error;
    }
  }

  Future<Response> post(String url, dynamic data) async {
    try {
      print("api url ===========> $url");
      return await dio.post(url, data: data);
    } catch (error) {
        // print("error from api provider");
      throw error;
    }
  }

  Future<Response> put(String url, dynamic data) async {
    try {
          print("api url ===========> $url");
      return await dio.put(url, data: data);
    } catch (error) {
      throw error;
    }
  }
}
