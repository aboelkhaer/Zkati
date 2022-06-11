import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountMoneyController extends GetxController {
  TextEditingController moneyValueController = TextEditingController();
  var money = 0.0.obs;
  @override
  void dispose() {
    moneyValueController.dispose();
    super.dispose();
  }

  double moneyInYearToMoneyForDonateInMoney() {
    return money > 0.0 ? ((money * 2.5) / 100) : 0.0;
  }
}
