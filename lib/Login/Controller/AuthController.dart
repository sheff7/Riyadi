// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
//
// class AuthController extends GetxController {
//   final String authTokenKey = 'authToken';
//   final GetStorage storage = GetStorage();
//
//   static AuthController get to => Get.find<AuthController>();
//
//   AuthController() {
//     Get.put<AuthController>(this);
//   }
//
//   void login(String token) {
//     storage.write(authTokenKey, token);
//   }
//
//   String? get authToken => storage.read(authTokenKey);
//
//   void logout() {
//     storage.remove(authTokenKey);
//   }
// }

import 'package:get/get.dart';

import '../Repository/AuthRepository.dart';
import 'get_storage_services.dart';


class AuthController extends GetxController {
  // final AuthRepository _authRepository = AuthRepository();
  final GetStorageService _storageService = GetStorageService();
  final RxString authToken = ''.obs;
  //
  // Future<void> login(String token) async {
  //   authToken.value = token;
  //   await _storageService.writeToken(token);
  // }
  //
  // Future<void> checkAuth() async {
  //   final storedToken = await _storageService.readToken();
  //   if (storedToken != null) {
  //     authToken.value = storedToken;
  //   }
  // }
  //
  // Future<void> logout() async {
  //   await _authRepository.logout(authToken.value);
  //   authToken.value = '';
  // }
}




