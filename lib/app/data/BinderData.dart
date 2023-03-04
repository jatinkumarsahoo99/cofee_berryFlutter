import 'package:get/get.dart';

import '../modules/connector_controller.dart';

class BinderData extends Bindings {
  @override
  void dependencies() {
    Get.put<ConnectorController>(ConnectorController(), permanent: true);
  }
}