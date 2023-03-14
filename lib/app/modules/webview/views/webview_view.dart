import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/webview_controller.dart';

class WebviewView extends GetView<WebviewController> {
  WebviewView({Key? key}) : super(key: key);

  WebviewController controller = Get.find<WebviewController>();

  // late InAppWebViewController _controller;

  Future<bool> _onBackPressed() async {
    if (await controller.webViewController!.canGoBack()) {
      controller.webViewController!.goBack();
      return false;
    } else {
      Get.toNamed(Routes.USERDASHBOARD);
      return true;
    }
  }

  final options = InAppWebViewGroupOptions(
    crossPlatform: InAppWebViewOptions(
        javaScriptCanOpenWindowsAutomatically: true,
        javaScriptEnabled: true,
        useOnDownloadStart: true,
        useOnLoadResource: true,
        preferredContentMode: UserPreferredContentMode.MOBILE,
        useShouldOverrideUrlLoading: true,
        mediaPlaybackRequiresUserGesture: true,
        allowFileAccessFromFileURLs: true,
        allowUniversalAccessFromFileURLs: true),
    android: AndroidInAppWebViewOptions(
      supportMultipleWindows: true,
      useHybridComposition: true,
    ),
    ios: IOSInAppWebViewOptions(
      allowsAirPlayForMediaPlayback: true,
      suppressesIncrementalRendering: true,
      ignoresViewportScaleLimits: true,
      selectionGranularity: IOSWKSelectionGranularity.DYNAMIC,
      isPagingEnabled: true,
      enableViewportScale: true,
      sharedCookiesEnabled: true,
      automaticallyAdjustsScrollIndicatorInsets: true,
      useOnNavigationResponse: true,
      allowsInlineMediaPlayback: true,
    ),
  );
  // bool showBackButton = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: AppBar(
          title: Text("InAppWebView"),
        ),
        body: Column(
          children: [
            Container(
              // height: MediaQuery.of(context).size.height*0.8,
              height: 300,
              child: InAppWebView(
                initialUrlRequest: URLRequest(url: Uri.parse("https://github.com/")),
                // initialUrlRequest: URLRequest(url: Uri.parse("https://dev.cureez.in/user/mobile-payment-gateway?order_id=T1I1MDgyNTE4NDU0ODk=&amount=23")),
                initialOptions: options,
                onWebViewCreated: controller.onWebViewCreated,
                iosOnNavigationResponse: (controller, response) async {
                  return IOSNavigationResponseAction.ALLOW;
                },

                shouldOverrideUrlLoading: (controller, navigationAction) async {
                  var url = navigationAction.request.url.toString();
                  if (url == 'myapp://home') {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                    return NavigationActionPolicy.CANCEL;
                  }
                  return NavigationActionPolicy.ALLOW;
                },
                onLoadStop: (controller1, url) =>
                    controller.onUrlChanged(url.toString()),

                /*     _controller.evaluateJavascript(source: '''
                function goBackToApp() {
                 window.location.href = 'myapp://home';
              }
               ''');*/
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(() {
                      if (controller.showBackButton.value) {
                        print(controller.showBackButton.value.toString());
                        return TextButton(
                          child: const Text('Back'),
                          onPressed: () async {
                            controller.backToHome();
                          },
                        );
                      } else {
                        print(controller.showBackButton.value.toString());
                        return Container();
                      }
                    }),
                    TextButton(
                      child: Text('Refresh'),
                      onPressed: () {
                        controller.webViewController!.reload();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

/*  void _injectJavascript() {
    const jsCode = '''
      var backButton = document.createElement('button');
      backButton.innerHTML = 'Back to App';
      backButton.style.position = 'fixed';
      backButton.style.bottom = '10px';
      backButton.style.right = '10px';
      backButton.style.zIndex = '9999';
      backButton.onclick = function() {
        window.flutter_inappwebview.callHandler('backButtonClicked');
      };
      document.body.appendChild(backButton);
    ''';

    _controller.evaluateJavascript(source: jsCode);
    _controller.addJavaScriptHandler(
        handlerName: 'backButtonClicked',
        callback: (_) {
          Get.toNamed(Routes.USERDASHBOARD);
        });
  }*/
}
