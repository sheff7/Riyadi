import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:riyad_test/HomePage/View/HomePage.dart';
import '../../DemoPage.dart';
import '../../Utils/InternetConnectivity.dart';
import '../../Utils/snackbar.dart';
import '../Model/confirm_otp_entity.dart';
import '../Repository/LoginRepository.dart';
import '../View/UserRegisteration.dart';
import 'get_storage_services.dart';
// import '../Repository/OtpRepository.dart';

class LoginController extends GetxController {
  final LoginRepository _otpRepository = LoginRepository();
   Rx<OtpFieldController> otpFieldController = OtpFieldController().obs;
  Rx<ConfirmOtpEntity> confirmOtpEntity=ConfirmOtpEntity().obs;
  final String mobileNumber;
  GetStorageService _storageService = GetStorageService();
  RxBool networkStatus = true.obs;
  RxString token="".obs;




  LoginController({required this.mobileNumber});


  // Future<SendOtpEntity?> sendOtp(String mobileNumber) async {
  //   return await _otpRepository.sendOtp(mobileNumber);
  //
  // }
  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }


   otpVerify(String otp)async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    // CustomSnackbar().LoadingBottomSheet();
    // Get.offAll(page);

       if(nBool==true){

         confirmOtpEntity.value=(await _otpRepository.verifyOtp(mobileNumber, otp))!;
         print("message val = "+confirmOtpEntity.value.message.toString());
         print("tok = "+confirmOtpEntity.value.token.toString());
         if(confirmOtpEntity.value.status.toString()=="true" && confirmOtpEntity.value.message.toString()=='already existing user'){
           print("sheffnaz");
           // print("response token = "+confirmOtpEntity.value.token.toString());

           await _storageService.writeToken(confirmOtpEntity.value.token.toString());
           token.value=await _storageService.readToken();
           // print("token is"+token.value);
           Get.to(HomePage(toke: confirmOtpEntity.value.token.toString(),));
          // Get.to(DemoPage(token:confirmOtpEntity.value.token.toString()));

         }

         else if(confirmOtpEntity.value.status.toString()=="false" && confirmOtpEntity.value.message.toString()=='The verification code is invalid, please try again' ){
           print("Otp is incorrect");

         }
         else if(confirmOtpEntity.value.status.toString()=="true" && confirmOtpEntity.value.message.toString()=='new user'){
           print("njan");
           Get.to(UserRegistaration(mobileNumber:mobileNumber,));


         }else  {
           print("somethin error");
         }
       }
       else  if (nBool == false){
         return CustomSnackbar().NoInernetSnackBar();
       }
    }


  // Future<void> verifyOtp() async {
  //   final otpCode = otpFieldController;
  //   final result = await _loginController.verifyOtp(otpCode.toString());
  //   if (result == null) {
  //     if (authController.authToken.value.isNotEmpty) {
  //       Get.offAll(HomePage());
  //     } else {
  //       Get.offAll(UserRegistaration());
  //     }
  //   } else {
  //     // Handle error cases
  //     // Show error message to the user
  //   }
  // }

}
