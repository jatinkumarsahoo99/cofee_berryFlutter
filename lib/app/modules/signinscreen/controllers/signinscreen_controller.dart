import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SigninscreenController extends GetxController {
  //TODO: Implement SigninscreenController

  final count = 0.obs;
  Rx<TextEditingController> cnfpwd = new TextEditingController().obs;
  Rx<bool> isPassShow = true.obs;


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

  void passwordMask(){
    isPassShow.value= !isPassShow.value;
    update(['passWord']);
  }



  void increment() => count.value++;
}
