import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../Utils/CustomSnackBar.dart';
import '../../Utils/InternetConnectivity.dart';
import '../../Utils/snackbar.dart';
import '../Model/send_otp_entity.dart';
import '../Repository/LoginRepository.dart';
import '../View/LoginWithOtp.dart';
import 'get_storage_services.dart';

class LoginWithMobileController extends GetxController{
  Rx<SendOtpEntity> sendOtpEntity=SendOtpEntity().obs;
  final LoginRepository _loginRepository = LoginRepository();
  Rx<TextEditingController> mobileController = TextEditingController().obs;
  RxBool networkStatus = true.obs;
  GetStorageService _storageService = GetStorageService();

  RxString token="".obs;




  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }

  sendotp()async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;

      if(nBool==true){
        sendOtpEntity.value = (await _loginRepository.sendOtp(mobileController.value.text))!;
        if(sendOtpEntity.value.status.toString()=="true" && sendOtpEntity.value.message.toString()== "otp has been sent to the entered mobile number"){
          print("undi");
          Get.to(OtpVerificationScreen(mobileNumber:mobileController.value.text,));

        }
        else if(sendOtpEntity.value.status.toString()=="false"){
          return CustomSnackbar()
              .InfoSnackBar('Mobile number error', 'Invalid Mobile number');

        }
        else{
          return CustomSnackbar()
              .InfoSnackBar('Mobile number error', 'Invalid Mobile number');

        }

      }
      else  if (nBool == false){
        return CustomSnackbar().InfoSnackBar('Network error', 'No internet Connection');
      }
    }




}
