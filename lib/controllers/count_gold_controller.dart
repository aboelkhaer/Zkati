import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CountGoldController extends GetxController {
  TextEditingController ownedGoldInGrams = TextEditingController();
  TextEditingController oneGramOfGoldPrice = TextEditingController();
  RxDouble ownedGold = 0.0.obs;
  RxDouble oneGramPrice = 0.0.obs;
  @override
  void dispose() {
    ownedGoldInGrams.dispose();
    oneGramOfGoldPrice.dispose();
    super.dispose();
  }

  double moneyInYearToMoneyForDonateInGold() {
    return ownedGold.value > 0.0 && oneGramPrice.value > 0.0
        ? (ownedGold.value * oneGramPrice.value) / 40
        : 0.0;
  }
}
