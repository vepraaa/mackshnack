import 'package:flutter/material.dart';
import 'package:mackshnack/app/modules/home/views/home_view.dart';

void main() {
  runApp(GetMaterialApp(
    
  )
  );
}

class GetMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MackShnack',
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}

