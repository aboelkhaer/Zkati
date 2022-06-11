import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zkati/controllers/home_screen_controller.dart';
import 'package:zkati/screens/widgets/custom_text_form_field.dart';

class CountGold extends GetView<HomeScreenController> {
  const CountGold({Key? key}) : super(key: key);

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
                  controller.replaceToArabicNumber(
                    controller.goldController
                        .moneyInYearToMoneyForDonateInGold()
                        .toString(),
                  ),
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
          child: Row(
            children: [
              Expanded(
                child: CustomTextFormField(
                  title: 'اجمالي الذهب بالجرامات',
                  controller: controller.goldController.ownedGoldInGrams,
                  onChanged: (value) {
                    (value.isNotEmpty)
                        ? controller.goldController.ownedGold.value =
                            double.parse(value)
                        : controller.goldController.ownedGold.value = 0.0;
                  },
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Expanded(
                child: CustomTextFormField(
                  title: 'سعر الجرام',
                  controller: controller.goldController.oneGramOfGoldPrice,
                  onChanged: (value) {
                    (value.isNotEmpty)
                        ? controller.goldController.oneGramPrice.value =
                            double.parse(value)
                        : controller.goldController.oneGramPrice.value = 0.0;
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
