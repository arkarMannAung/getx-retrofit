import 'package:get/get.dart';

class Controller extends GetxController {
  RxInt count = 0.obs;
  RxString userName = ''.obs;
  RxBool isLogin = false.obs;
  RxString token = ''.obs;

  @override
  // ignore: unnecessary_overrides
  void onInit() {
    // localStorage ထဲက ဒေတာတွေကို
    super.onInit();
  }
}
