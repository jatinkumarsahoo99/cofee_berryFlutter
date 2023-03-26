import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/flutterlocalpushnotification_controller.dart';

class FlutterlocalpushnotificationView
    extends GetView<FlutterlocalpushnotificationController> {
   FlutterlocalpushnotificationView({Key? key}) : super(key: key);

  FlutterlocalpushnotificationController controller = Get.find<FlutterlocalpushnotificationController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterlocalpushnotificationView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          InkWell(
            onTap: (){
              controller.scheduleNotification();
            },
            child: Center(
              child: Text(
                'FlutterlocalpushnotificationView is working',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              controller.stopNotifications();
            },
            child: Center(
              child: Text(
                'FlutterlocalpushnotificationView is working',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
