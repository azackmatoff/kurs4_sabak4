import 'dart:math' as math;
import 'dart:developer' as dev;
import 'package:flutter/material.dart';

import 'package:kurs4_sabak4/constants/colors/app_colors.dart';
import 'package:kurs4_sabak4/constants/text_styles/app_text_styles.dart';
import 'package:kurs4_sabak4/data/repositories/math_repository.dart';
import 'package:kurs4_sabak4/widgets/dice_page_content.dart';
import 'package:kurs4_sabak4/widgets/dice_widget.dart';

class DicePage extends StatefulWidget {
  const DicePage({
    Key key,
  }) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int _leftNumber = 1;
  int _rightNumber = 3;

  int _count = 0;

  @override
  Widget build(BuildContext context) {
    dev.log('build $_count');

    return Scaffold(
      backgroundColor: AppColors.yellow,
      appBar: AppBar(
        backgroundColor: AppColors.yellow,
        centerTitle: true,
        title: Text(
          'Dice App $_count',
          style: AppTextStyles.appBarTitle,
        ),
      ),
      body: DicePageContent(
        onTap: _getRamdonNumber,
        leftNumber: _leftNumber,
        rightNumber: _rightNumber,
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _getRamdonNumber() {
    _leftNumber = MathRepository.getRandomNumber();
    _rightNumber = MathRepository.getRandomNumber();
    _count++;

    dev.log('solNomer $_leftNumber');
    dev.log('onNomer $_rightNumber');
    dev.log('_count $_count');

    setState(() {});
  }

  void ozgort() {
    math.Random random = math.Random();

// random.nextInt(6); ======> min: 0 - max: 5
// nextInt(100) randomno san alip kel => minimum 0, maximum 99
    // 0 + 1 = 1
    // 1 + 1 = 2
    // 2 + 1 = 3
    // 3 + 1 = 4
    // 4 + 1 = 5
    // 5 + 1 = 6

    setState(() {
      _leftNumber = random.nextInt(6) + 1;
      _rightNumber = random.nextInt(6) + 1;
    });

    print('solNomer ==> $_leftNumber');
    print('onNomer ==> $_rightNumber');
  }
}


/// State Management

/// DRY 
/// Don't 
/// Repeat
/// Yourself

/// OOP - Object Oriented Programming
/// OOP - Obyektno Orientirovannoe Programmirovanie

/// Design pattern
/// MVC - Model View Controller
/// MVVM - Model View ViewModel
/// MVI - bloc


/// Business Logic, method, functions
/// UI - User Interface