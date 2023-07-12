import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:riyad_test/Login/Controller/get_storage_services.dart';
import 'package:riyad_test/generated/json/base/json_convert_content.dart';

import '../../AppConstants/ApiConstatnt.dart';
import '../../Config/DioConfig.dart';
import '../Model/gim_list_entity.dart';

class HomeRepository {
  Dio _dio = Dio(DioConfig.options);

  final GetStorageService _storageService = GetStorageService();
  static final _localStorage = GetStorage();

  Future<GimListEntity?>gymList(String toke) async {
    try {
      print('inside home');
      final token = await _storageService.readToken();
      // print("token issss = " + token.toString());
     String tok =  await _localStorage.read('authToken');

     String val = 'Bearer '+tok;
     print("Token val = "+val);

      _dio.options.headers["Authorization"] ="Bearer "+toke;
      final response = await _dio.post(
          ApiConstant.BASE_URL +"get-gym");
      print('get gym 1');
      // print(response);
      print('response code '+response.statusCode.toString());
      print("shahhhh"+response.statusCode.toString()+response.statusMessage.toString());

      if (response.statusCode == 200) {
        // OTP sent successfully
        var data = response.data;
        print(data.toString());
        return JsonConvert.fromJsonAsT<GimListEntity>(data);
      }
        else {
          // Handle other response statuses
          print('API call failed with status code: ${response.statusCode}');
          // You can handle the error here or throw an exception
          throw Exception('API call failed with status code: ${response.statusCode}');
        }
      }

    catch (e) {
      print("errorCode"+e.toString());
      // You can handle the error here or throw an exception
      throw e;
    }
  }

  // Future<GimListEntity?> daypassList() async {
  //   try {
  //     final token = await _storageService.readToken();
  //     print("token is" + token.toString());
  //     _dio.options.headers["Authorization"] = "Bearer $token";
  //     final response = await _dio.post('get-daypass');
  //     if (response.statusCode == 200) {
  //       // OTP sent successfully
  //       var data = response.data;
  //       print(data.toString());
  //       return JsonConvert.fromJsonAsT<GimListEntity>(data);
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }
}
