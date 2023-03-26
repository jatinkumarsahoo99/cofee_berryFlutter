import 'dart:math';

import 'package:get/get.dart';

import '../views/canvaschart_view.dart';

class CanvaschartController extends GetxController {
  //TODO: Implement CanvaschartController

  final count = 0.obs;
  List<Score> scores = [];
  @override
  void onInit() {
    scores = List<Score>.generate(7 ,(index) {
      final y = Random().nextDouble() * 30;
      final d = DateTime.now().add(Duration(days: -7 + index));
      return Score(y, d);
    });
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
