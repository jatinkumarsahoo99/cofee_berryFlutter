import 'package:get/get.dart';

import '../controllers/signinscreen_controller.dart';

class SigninscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SigninscreenController>(
      () => SigninscreenController(),fenix: true
    );
  }
}
