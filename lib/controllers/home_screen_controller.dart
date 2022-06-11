import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:zkati/controllers/count_gold_controller.dart';
import 'package:zkati/controllers/count_money_controller.dart';
import 'package:zkati/screens/widgets/taps/count_gold.dart';

import '../screens/widgets/widgets.dart';

class HomeScreenController extends GetxController {
  CountMoneyController get moneyController => Get.find<CountMoneyController>();
  CountGoldController get goldController => Get.find<CountGoldController>();

  RxInt showScreen = 0.obs;

  Widget switchSideButton() {
    switch (showScreen.value) {
      case 0:
        return const CountMoney();
      case 1:
        return const CountGold();
      case 2:
        return const Center(
          child: Text('2'),
        );
    }
    update();
    return CountMoney();
  }

  String replaceToArabicNumber(String input) {
    const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const arabic = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];

    for (int i = 0; i < english.length; i++) {
      input = input.replaceAll(english[i], arabic[i]);
    }
    update();
    return input;
  }
}
