import 'package:ecommerce/controller/onboarding_controller.dart';
import 'package:ecommerce/view/widget/onboarding/custom_dot_controller.dart';
import 'package:ecommerce/view/widget/onboarding/custom_button.dart';
import 'package:ecommerce/view/widget/onboarding/custom_silder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: const CustomSliderOnBoarding(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: const [
                  CustomDotControllerOnBoarding(),
                  SizedBox(height: 10),
                  CustomButtonOnBoarding(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
