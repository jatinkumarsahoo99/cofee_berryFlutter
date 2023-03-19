import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/canvaschart_controller.dart';

class CanvaschartView extends GetView<CanvaschartController> {
  const CanvaschartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CanvaschartView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CanvaschartView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
