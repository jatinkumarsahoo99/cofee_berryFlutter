import 'package:get/get.dart';

class MycartController extends GetxController {
  //TODO: Implement MycartController
  List<String> header = ['All','Nike','Adidas','Converse'];
  final count = 0.obs;
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
