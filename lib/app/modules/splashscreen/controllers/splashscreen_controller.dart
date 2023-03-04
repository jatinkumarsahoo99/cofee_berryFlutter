import 'dart:async';

import 'package:get/get.dart';

import '../../../data/SharedPref.dart';
import '../../../routes/app_pages.dart';

class SplashscreenController extends GetxController {
  //TODO: Implement SplashscreenController

  final count = 0.obs;

  SharedPref sharedPref = SharedPref();

  @override
  void onInit() {
    callTimer();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callTimer() {
    Timer(Duration(seconds: 8), navigateToWelcomeScreen);
  }


  void navigateToWelcomeScreen() async {
    Get.offAllNamed(Routes.SIGNUPSCREEN);
  }

  void increment() => count.value++;
}
