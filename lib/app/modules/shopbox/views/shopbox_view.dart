import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/shopbox_controller.dart';

class ShopboxView extends GetView<ShopboxController> {
  const ShopboxView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShopboxView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ShopboxView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
