
import 'package:ecommerce/controller/auth/login_controller.dart';
import 'package:ecommerce/core/class/handling_data_view.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/function/alert_exit_app.dart';
import 'package:ecommerce/core/function/validinput.dart';
import 'package:ecommerce/view/widget/auth/customButton.dart';
import 'package:ecommerce/view/widget/auth/customTextBody.dart';
import 'package:ecommerce/view/widget/auth/customTextForm.dart';
import 'package:ecommerce/view/widget/auth/customTexttTitle.dart';
import 'package:ecommerce/view/widget/auth/logo.dart';
import 'package:ecommerce/view/widget/auth/textSignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Sign In',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: WillPopScope(
          onWillPop: alertExitApp,
          child: GetBuilder<LoginControllerImp>(
            builder: (controller) => HandlingDataRequest(
                statusRequest: controller.statusRequest,
                widget: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: Form(
                    key: controller.formstate,
                    child: ListView(children: [
                      const LogoAuth(),
                      const SizedBox(height: 20),
                      CustomTextTitleAuth(text: "10".tr),
                      const SizedBox(height: 10),
                      CustomTextBodyAuth(text: "11".tr),
                      const SizedBox(height: 15),
                      CustomTextFormAuth(
                        isNumber: false,

                        valid: (val) {
                          return validInput(val!, 5, 100, "email");
                        },
                        mycontroller: controller.email,
                        hinttext: "12".tr,
                        iconData: Icons.email_outlined,
                        labeltext: "18".tr,
                        // mycontroller: ,
                      ),
                      GetBuilder<LoginControllerImp>(
                        builder: (controller) => CustomTextFormAuth(
                          obscureText: controller.isshowpassword,
                          onTapIcon: () {
                            controller.showPassword();
                          },
                          isNumber: false,
                          valid: (val) {
                            return validInput(val!, 3, 30, "password");
                          },
                          mycontroller: controller.password,
                          hinttext: "13".tr,
                          iconData: Icons.lock_outline,
                          labeltext: "19".tr,
                          // mycontroller: ,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.goToForgetPassword();
                        },
                        child: Text(
                          "14".tr,
                          textAlign: TextAlign.right,
                        ),
                      ),
                      CustomButtomAuth(
                          text: "15".tr,
                          onPressed: () {
                            controller.login();
                          }),
                      const SizedBox(height: 40),
                      CustomTextSignUpOrSignIn(
                        textOne: "16".tr, 
                        textTwo: "17".tr,
                        onTap: () {
                          controller.goToSignUp();
                        },
                      )
                    ]),
                  ),
                )),
          )),
    );
  }
}