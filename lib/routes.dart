
import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/view/screen/auth/login.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login()
};