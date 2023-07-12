// import 'package:dio/dio.dart';
// import '../Controller/get_storage_services.dart';
//
// class AuthRepository {
//   final Dio _dio = Dio();
//   final String apiUrl = 'YOUR_API_URL';
//   final GetStorageService _storageService = GetStorageService();
//
//   Future<void> logout(String authToken) async {
//     try {
//       final response = await _dio.post('$apiUrl/logout',
//           options: Options(headers: {'Authorization': 'Bearer $authToken'}));
//       if (response.statusCode == 200) {
//         await _storageService.removeToken();
//       } else {
//         // Handle logout error
//       }
//     } catch (error) {
//       // Handle network or other errors
//     }
//   }
// }
