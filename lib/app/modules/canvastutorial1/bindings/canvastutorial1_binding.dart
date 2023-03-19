import 'package:get/get.dart';

import '../controllers/canvastutorial1_controller.dart';

class Canvastutorial1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Canvastutorial1Controller>(
      () => Canvastutorial1Controller(),
    );
  }
}
