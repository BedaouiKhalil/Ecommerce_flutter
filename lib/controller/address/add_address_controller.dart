
import 'package:ecommerce/core/class/status_request.dart';
import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/function/handing_data_controller.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/dataSource/remote/address_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddAddressController extends GetxController {
  StatusRequest statusRequest = StatusRequest.none;

  AddressData addressData = AddressData(Get.find());

  MyServices myServices = Get.find();

  TextEditingController? name;
  TextEditingController? city;
  TextEditingController? street;



  intialData() {
    name = TextEditingController();
    city = TextEditingController();
    street = TextEditingController();
  }

  addAddress() async {
    statusRequest = StatusRequest.loading;
    update();

    var response = await addressData.addData(
        myServices.sharedPreferences.getString("id")!,
        name!.text,
        city!.text,
        street!.text
);
  
    print("=============================== Controller $response ");

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.offAllNamed(AppRoute.homepage);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  @override
  void onInit() {
    intialData();
    super.onInit();
  }
}