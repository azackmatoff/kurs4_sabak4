import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kurs4_sabak4/constants/colors/app_colors.dart';
import 'package:kurs4_sabak4/constants/text_styles/app_text_styles.dart';
import 'package:kurs4_sabak4/data/getx_data/controllers/dice_controller.dart';
import 'package:kurs4_sabak4/widgets/dice_page_content.dart';

class DiceGetxPage extends StatelessWidget {
  DiceGetxPage({Key key}) : super(key: key);

  final DiceController _diceController = Get.put(DiceController());

  @override
  Widget build(BuildContext context) {
    log('build ${_diceController.count.value}');
    return Scaffold(
      backgroundColor: AppColors.yellow,
      appBar: AppBar(
        backgroundColor: AppColors.yellow,
        centerTitle: true,
        title: Text(
          'Dice GetX App',
          style: AppTextStyles.appBarTitle,
        ),
      ),
      body: Obx(() {
        return DicePageContent(
          onTap: () => _diceController.getRandomNumber(),
          leftNumber: _diceController.leftNumber.value,
          rightNumber: _diceController.rightNumber.value,
        );
      }),
    );
  }
}
