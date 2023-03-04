import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../data/ApiFactory.dart';
import '../../../data/Const.dart';
import '../../../routes/app_pages.dart';
import '../../connector_controller.dart';

class SignupscreenController extends GetxController {
  //TODO: Implement SignupscreenController

  final count = 0.obs;
  TextEditingController userNameController = new TextEditingController();
  TextEditingController userNameMobileNumber = new TextEditingController();
  TextEditingController userEmailAddress = new TextEditingController();
  TextEditingController userPassword = new TextEditingController();

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

  void navigateToSignIn() async {
    Get.offAllNamed(Routes.SIGNINSCREEN);
  }
  SignUpApi(String slug) {
    print("My API is>>"+ApiFactory.SIGNUP);
    Get.find<ConnectorController>().GETMETHODCALL(
        api: ApiFactory.SIGNUP,
        fun: (Map<String, dynamic> map) {
          if (map[Const.CODE] == Const.SUCCESS) {
            String data=jsonEncode(json.decode(map["body"][0].toString()));
            // print("Here is my json Data>>>>"+data);
            // map["body"].forEach((element) {
              // listNewsDetails.add(new NewsDetailsModel.fromJson(json.decode(element)));
              // newsDetailsModel = NewsDetailsModel.fromJson(json.decode(element));
            // });
            update(["listData"]);
          } else {}
        });
  }


  void increment() => count.value++;
}
