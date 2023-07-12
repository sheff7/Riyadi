import 'package:dio/dio.dart';

import '../AppConstants/ApiConstatnt.dart';

class DioConfig {
  // Dio _dio=new Dio();

  static BaseOptions options = new BaseOptions(
    baseUrl: ApiConstant.BASE_URL,
    receiveDataWhenStatusError: true,
    connectTimeout: Duration(seconds: 60), // 60 seconds
    receiveTimeout: Duration(seconds: 60), // 60 seconds
  );
}
