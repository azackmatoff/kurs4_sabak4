import 'package:get/get.dart';
import 'dart:developer' as dev;
import 'package:kurs4_sabak4/data/repositories/math_repository.dart';

class DiceController extends GetxController {
  RxInt leftNumber = 1.obs;
  RxInt rightNumber = 4.obs;
  RxInt count = 0.obs;

  void getRandomNumber() {
    leftNumber.value = MathRepository.getRandomNumber();
    rightNumber.value = MathRepository.getRandomNumber();
    count.value++;

    dev.log('leftNumber.value ${leftNumber.value}');
    dev.log('rightNumber.value ${rightNumber.value}');
    dev.log('count.value ${count.value}');
  }
}
