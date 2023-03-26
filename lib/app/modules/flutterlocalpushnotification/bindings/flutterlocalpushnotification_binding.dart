import 'package:get/get.dart';

import '../controllers/flutterlocalpushnotification_controller.dart';

class FlutterlocalpushnotificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FlutterlocalpushnotificationController>(
      () => FlutterlocalpushnotificationController(),
    );
  }
}
