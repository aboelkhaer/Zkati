import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zkati/controllers/home_screen_controller.dart';

import '../widgets/widgets.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.07),
                    child: const Text(
                      'ذكاتك',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Color(0xFF8B80F8),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 100),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                margin: const EdgeInsets.only(
                                  left: 30,
                                  right: 30,
                                ),
                                child: Obx(() => controller.switchSideButton()),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height /
                                        2.5,
                                    width: MediaQuery.of(context).size.width *
                                        0.187,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF8B80F8),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 8,
                                          offset: const Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: Obx(
                                      () => Column(
                                        children: [
                                          SideButton(
                                            color: Colors.white,
                                            icon: const Icon(
                                              Icons.attach_money,
                                              color: Colors.white,
                                            ),
                                            title:
                                                controller.showScreen.value == 0
                                                    ? 'المال'
                                                    : '',
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                            ),
                                            onTap: () {
                                              if (controller.showScreen.value !=
                                                  0) {
                                                controller.showScreen.value = 0;
                                              }
                                            },
                                          ),
                                          SideButton(
                                            color: Colors.white,
                                            icon: const Icon(
                                              Icons.money,
                                              color: Colors.white,
                                            ),
                                            title:
                                                controller.showScreen.value == 1
                                                    ? 'الذهب'
                                                    : '',
                                            borderRadius:
                                                const BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                            ),
                                            onTap: () {
                                              if (controller.showScreen.value !=
                                                  1) {
                                                controller.showScreen.value = 1;
                                              }
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
