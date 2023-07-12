import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../HomePage/View/HomePage.dart';
import '../../Utils/InternetConnectivity.dart';
import '../../Utils/snackbar.dart';
import '../Model/user_registraion_entity.dart';
import '../Repository/UseRegistrationRepository.dart';
import 'get_storage_services.dart';

class UserRegistrationController extends GetxController{
  final UserRegistrationRepository _userRegistration = UserRegistrationRepository();
  Rx<UserRegistraionEntity> userDetailsEntity=UserRegistraionEntity().obs;
  final String mobileNumber;
  GetStorageService _storageService = GetStorageService();
  RxBool networkStatus = true.obs;
  RxString token="".obs;
  Rx<TextEditingController> lastNameControler = TextEditingController().obs;
  Rx<TextEditingController> firstNameControler = TextEditingController().obs;
  Rx<TextEditingController> emailController = TextEditingController().obs;


  final  numberController= TextEditingController();

  UserRegistrationController({required this.mobileNumber});


  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }

  Registeration(String firstname, String lastname, String email, String mobilenumber)async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    // CustomSnackbar().LoadingBottomSheet();
    // Get.back();


    // print(confirmOtpEntity.value);

    print("api");

    if(nBool==true){

      userDetailsEntity.value=(await _userRegistration.userDetails(firstname,lastname,email,mobilenumber))!;
      if(userDetailsEntity.value.status.toString()=="true"){
        print("jaseeel");

        // Get.to(HomePage());
        await _storageService.writeToken(userDetailsEntity.value.token.toString());
        token.value=await _storageService.readToken();
        print("token is"+token.value.toString());

      }

      else if(userDetailsEntity.value.status.toString()=="false" ){
        return CustomSnackbar().InfoSnackBar('Already registered', 'mobile/email id already registered');

      }
      else  {
        print("somethin error");
      }
    }
    else  if (nBool == false){
      return CustomSnackbar().InfoSnackBar('Network error', 'No internet Connection');
    }
  }
  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    token.value=await _storageService.readToken();
    checkNetworkStatus();
    super.onInit();
  }



}