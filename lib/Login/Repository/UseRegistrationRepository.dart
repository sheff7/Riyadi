import 'package:dio/dio.dart';

import '../../AppConstants/ApiConstatnt.dart';
import '../../Config/DioConfig.dart';
import '../../generated/json/base/json_convert_content.dart';
import '../Model/user_registraion_entity.dart';

class UserRegistrationRepository {
  Dio _dio = Dio(DioConfig.options);

  Future<UserRegistraionEntity?> userDetails(String firstname, String lastname,
      String email, String mobileNumber) async {
    try {
      print("shgsjajsab" + mobileNumber);

      final response =
          await _dio.post(ApiConstant.BASE_URL + "new_register", data: {
        "first_name": firstname,
        "last_name": lastname,
        "email": email,
        "mobile_number": mobileNumber,
        "image": null,
      });
      print("shgsjajsab" + mobileNumber);

      if (response.statusCode == 200) {
        // OTP verification successful
        var data = response.data;
        print(data.toString());

        return JsonConvert.fromJsonAsT<UserRegistraionEntity>(data);
      }
    } catch (e) {
      print(e);
    }
  }
}
