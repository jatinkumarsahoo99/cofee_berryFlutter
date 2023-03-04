import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/mycart_controller.dart';

class MycartView extends GetView<MycartController> {
   MycartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Text(
          'MycartView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
