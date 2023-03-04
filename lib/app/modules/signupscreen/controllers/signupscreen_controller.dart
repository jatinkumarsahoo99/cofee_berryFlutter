import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SignupscreenController extends GetxController {
  //TODO: Implement SignupscreenController

  final count = 0.obs;
  TextEditingController userNameController = new TextEditingController();
  TextEditingController userNameMobileNumber = new TextEditingController();
  TextEditingController userEmailAddress = new TextEditingController();
  TextEditingController userPassword = new TextEditingController();

  @override
  void onInit() {
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

  void navigateToSignIn() async {
    Get.offAllNamed(Routes.SIGNINSCREEN);
  }

  void increment() => count.value++;
}
