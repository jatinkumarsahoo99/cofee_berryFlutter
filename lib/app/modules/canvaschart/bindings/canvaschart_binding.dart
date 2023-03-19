import 'package:get/get.dart';

import '../controllers/canvaschart_controller.dart';

class CanvaschartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CanvaschartController>(
      () => CanvaschartController(),
    );
  }
}
