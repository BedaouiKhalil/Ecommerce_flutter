

import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/middleware/my_middleware.dart';
import 'package:ecommerce/view/screen/OnBoarding.dart';
import 'package:ecommerce/view/screen/auth/forget_password/forget_password.dart';
import 'package:ecommerce/view/screen/auth/forget_password/reset_password.dart';
import 'package:ecommerce/view/screen/auth/forget_password/success_reset_password.dart';
import 'package:ecommerce/view/screen/auth/forget_password/verify_code.dart';
import 'package:ecommerce/view/screen/auth/login.dart';
import 'package:ecommerce/view/screen/auth/signup.dart';
import 'package:ecommerce/view/screen/auth/success_signup.dart';
import 'package:ecommerce/view/screen/auth/verify_code_signup.dart';
import 'package:ecommerce/view/screen/home_screen.dart';
import 'package:ecommerce/view/screen/items.dart';
import 'package:ecommerce/view/screen/language.dart';
import 'package:ecommerce/view/screen/my_favorite.dart';
import 'package:ecommerce/view/screen/product_details.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
  // GetPage(name: "/", page: () => TestView()),
//  Auth
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetpassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
  GetPage(
      name: AppRoute.verfiyCodeSignUp, page: () => const VerfiyCodeSignUp()),
  //
  GetPage(name: AppRoute.homepage, page: () => const HomeScreen()),
  GetPage(name: AppRoute.items, page: () => const Items()), 
  GetPage(name: AppRoute.productdetails, page: () => const ProductDetails()), 
  GetPage(name: AppRoute.myfavroite, page: () => const MyFavorite()),
];