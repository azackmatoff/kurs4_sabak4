import 'package:flutter/material.dart';
import 'package:kurs4_sabak4/pages/flutter_pages/dice_page.dart';
import 'package:kurs4_sabak4/pages/getx_pages/dice_getx_page.dart';

import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dice App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DiceGetxPage(),
    );
  }
}
