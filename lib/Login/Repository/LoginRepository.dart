import 'package:dio/dio.dart';

import '../../AppConstants/ApiConstatnt.dart';
import '../../Config/DioConfig.dart';
import '../../generated/json/base/json_convert_content.dart';
import '../Model/confirm_otp_entity.dart';
import '../Model/send_otp_entity.dart';

class LoginRepository {
  Dio _dio = Dio(DioConfig.options);
  // final String apiUrl = 'https://interfuel.qa/riyadhi-app/api';

  Future<SendOtpEntity?> sendOtp(String mobileNumber) async {
    try {
      final response = await _dio.post(
          ApiConstant.BASE_URL + "sent-mobile-number", data: {
        "mobile_number": mobileNumber
      });
      if (response.statusCode == 200) {
        // OTP sent successfully
        var data = response.data;
        print(data.toString());
        return JsonConvert.fromJsonAsT<SendOtpEntity>(data);
      }
    } catch (e) {
      print(e);
    }
  }

  Future<ConfirmOtpEntity?> verifyOtp(String mobileNumber,String otp) async {
    try {
      print(otp.toString());
      print("shgsjajsab"+mobileNumber);

      final response = await _dio.post(
          ApiConstant.BASE_URL + "confirm-otp", data: {
        "mobile_number": mobileNumber,
        "otp":otp

      });
      print("shgsjajsab"+mobileNumber);

      if (response.statusCode == 200) {
        // OTP verification successful
        print('resposne login = '+response.data.toString());
        var data = response.data;

        print(data.toString());
        print("shgsjajsab"+mobileNumber);
        print(otp.toString());


        return JsonConvert.fromJsonAsT<ConfirmOtpEntity>(data);
      }
    } catch (e) {
      print(e);
    }
  }
}
