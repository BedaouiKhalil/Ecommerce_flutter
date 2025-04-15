import 'package:ecommerce/controller/onboarding_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/data/dataSource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class CustomSilderOnBoarding extends GetView<OnboardingControllerImp> {
  const CustomSilderOnBoarding({super.key});
  
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val){
        controller.onPageChanged(val);
      },
                itemCount: onBoardingList.length,
                itemBuilder:
                    (context, i) => Column(
                      children: [
                        Text(
                          onBoardingList[i].title!,
                          style:  Theme.of(context).textTheme.displayLarge
                        ),
                        const SizedBox(height: 70),
                        Image.asset(
                          onBoardingList[i].image!,
                          width: 200,
                          height: 230,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(height: 40),
                        Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Text(
                            onBoardingList[i].body!,
                            textAlign: TextAlign.center,
                            style:  Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
              );
  }
}