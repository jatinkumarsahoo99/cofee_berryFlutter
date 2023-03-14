import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class WebviewController extends GetxController {
  //TODO: Implement WebviewController

  final count = 0.obs;
  InAppWebViewController? webViewController;
  var showBackButton = false.obs;
  @override
  void onInit() {
    super.onInit();
  }

  void onWebViewCreated(controller) {
    webViewController = controller;
  }

  void onUrlChanged(url) {
    print("url <<< "+url);
    showBackButton.value = url.contains('https://github.com/signup?ref_cta=Sign+up&ref_loc=header+logged+out&ref_page=%2F&source=header-home');
    print("true or false >> "+showBackButton.value.toString());
    // showBackButton.value = url.contains('https://dev.cureez.in/user/mobile-payment-gateway?order_id=T1I1MDgyNTE4NDU0ODk=&amount=23');
  }
  void goBack() {
    webViewController!.goBack();
  }

  backToHome() async {
    Get.toNamed(Routes.USERDASHBOARD);
    /*if (await webViewController!
        .canGoBack()) {
    webViewController!.goBack();
    // return false;
    } else {
    Get.toNamed(Routes.USERDASHBOARD);
    // return true;
    }*/
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
