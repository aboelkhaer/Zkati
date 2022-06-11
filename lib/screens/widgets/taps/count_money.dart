import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zkati/controllers/home_screen_controller.dart';
import 'package:zkati/screens/widgets/custom_text_form_field.dart';

class CountMoney extends GetView<HomeScreenController> {
  const CountMoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'جنيه مصري  ',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF8B80F8),
              ),
            ),
            Obx(
              () => Flexible(
                child: Text(
                  controller.replaceToArabicNumber(controller.moneyController
                      .moneyInYearToMoneyForDonateInMoney()
                      .toString()),
                  style: const TextStyle(
                    fontSize: 25,
                    color: Color(0xFF8B80F8),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: CustomTextFormField(
            controller: controller.moneyController.moneyValueController,
            title: 'قيمة المال الذي تملكه',
            onChanged: (value) {
              (value.isNotEmpty)
                  ? controller.moneyController.money.value = double.parse(value)
                  : controller.moneyController.money.value = 0.0;
            },
          ),
        ),
      ],
    );
  }
}
