import 'package:get/get.dart';

import '../controllers/mapviewscreen_controller.dart';

class MapviewscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MapviewscreenController>(
      () => MapviewscreenController(),
    );
  }
}
