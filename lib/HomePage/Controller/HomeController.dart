import 'package:get/get.dart';

import '../../Login/Controller/get_storage_services.dart';
import '../../Utils/InternetConnectivity.dart';
import '../Model/gim_list_entity.dart';
import '../Repository/HomeRepository.dart';

class HomeController extends GetxController{
final String toke;
  RxBool isLoading=false.obs;
  final HomeRepository _homeRepository = HomeRepository();

  Rx<GimListEntity> gimListEntity=GimListEntity().obs;

  GetStorageService _storageService = GetStorageService();
  RxBool networkStatus = true.obs;
  RxString token="".obs;

  HomeController({required this.toke});

  // RxBool loadingBool = false.obs;


  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }

  }
  void gymList() async {
    bool? nBool = await NetworkConnectivity().checkConnectivityState();
    print("hdhhdhds");
    if (nBool == true) {
      try {
        print('inside gylist api');
        isLoading.value=true;
        gimListEntity.value = (await _homeRepository.gymList(toke))!;
        print(gimListEntity.value);

        isLoading.value=false;
      } catch (e) {
        print(e);
        // Handle the error here, such as showing an error message to the user
      }
    }
  }

  @override
  void onInit() {
    super.onInit();
    checkNetworkStatus();
    gymList();
  }

}