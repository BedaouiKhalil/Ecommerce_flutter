import 'dart:io';
import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
    title: "Warning",
    titleStyle: const TextStyle(
      color: AppColor.primaryColor,
      fontWeight: FontWeight.bold,
    ),
    middleText: "Do you want to exit the app?",
    backgroundColor:  AppColor.backgroundcolor,
    actions: [
      ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: AppColor.primaryColor),
        onPressed: () {
          exit(0);
        },
        child: const Text("Confirm"),
      ),
      ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: AppColor.primaryColor),
        onPressed: () {
          Get.back();
        },
        child: const Text("Cancel"),
      ),
    ],
  );
  return Future.value(true);
}
