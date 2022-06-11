import 'package:get/get.dart';
import 'package:zkati/controllers/count_gold_controller.dart';
import 'package:zkati/controllers/count_money_controller.dart';
import 'package:zkati/controllers/home_screen_controller.dart';

class HomeScreenBingings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeScreenController>(() => HomeScreenController());
    Get.lazyPut<CountMoneyController>(() => CountMoneyController());
    Get.lazyPut<CountGoldController>(() => CountGoldController());
  }
}
