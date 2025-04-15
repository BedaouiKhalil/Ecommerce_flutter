import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/data/dataSource/static/static.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

abstract class OnboardingController  extends GetxController{
  next();
  onPageChanged(int index);
}

class OnboardingControllerImp extends OnboardingController{
  int currentPage = 0;
  late PageController  pageController=PageController() ;
  
   @override
  next() {
    currentPage++;

    if (currentPage > onBoardingList.length - 1) {
       Get.offAllNamed(AppRoute.login) ; 
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage =index;
    update();
  }

  @override
  void onInit() {
    pageController =PageController();
    super.onInit();
  }

}