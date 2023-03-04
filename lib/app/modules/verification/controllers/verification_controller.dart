import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerificationController extends GetxController {
  //TODO: Implement VerificationController

  final count = 0.obs;

  Rx<bool> hasError = false.obs;
  String currentText = "";
  Rx<GlobalKey<ScaffoldState>>  scaffoldKey = GlobalKey<ScaffoldState>().obs;
  Rx<dynamic> formKey = GlobalKey<FormState>().obs;

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
