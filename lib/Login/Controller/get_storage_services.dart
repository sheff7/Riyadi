import 'dart:ffi';

import 'package:get_storage/get_storage.dart';

class GetStorageService {
  static final _localStorage = GetStorage();

  writeToken(String token)async{
    //print("write token = "+token);
    await _localStorage.write('authToken', token);
  }
 Future<String> readToken()async{
    String token = "";
    //print('token storage = '+await _localStorage.read('authToken'));
    token= await _localStorage.read('authToken');
    //print('token stored'+token);
    //print('token stored'+token);
   if(token!=null){
     return token;
   }
   return 'notoken';
  }



//   Future<void> writeToken(String token) async {
//     await _localStorage.write('authToken', token);
//   }
//
//   Future<String?> readToken() async {
//     return _localStorage.read('authToken');
//   }
//
//   Future<void> removeToken() async {
//     await _localStorage.remove('authToken');
//   }
}