// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:mackshnack/app/modules/shopbox/controllers/shopbox_controller.dart';
import 'package:mackshnack/app/modules/shoppage/views/shoppage_view.dart';
import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 250, 250),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 40, 78, 53),
        title: Row(
          
          children: <Widget>[
            Spacer(),
            Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
              height: 60,
              width: 60,
            ),
            const SizedBox(width: 8),
            const Text('вкусно - и точка',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                )),
                Spacer(),
                Spacer(),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text(
                'Заказать',
                style: TextStyle(
                  backgroundColor: Color.fromARGB(255, 40, 78, 53),
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 40, 78, 53),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShopPage(
                      homeController: homeController,
                      shopBoxController: ShopBoxController(),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
