import 'package:get/get.dart';

class UserdashboardController extends GetxController {
  //TODO: Implement UserdashboardController

  final count = 0.obs;
  List<String> header = ['All','Nike','Adidas','Converse'];
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

  void increment() => count.value++;
}
