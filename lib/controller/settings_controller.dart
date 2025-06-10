import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  MyServices myServices = Get.find();

  Future<void> logout() async {
    final String? currentLang = myServices.sharedPreferences.getString("lang");
    await myServices.sharedPreferences.clear();
    await myServices.sharedPreferences.setString("lang", currentLang ?? "en");
    Get.offAllNamed(AppRoute.login);
  }
}