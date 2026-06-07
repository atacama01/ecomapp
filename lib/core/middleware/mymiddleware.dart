import 'package:ecomapp/core/constant/routes.dart';
import 'package:ecomapp/core/services/servecies.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  Myservices myServices = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("onboarding") == "1") {
      return RouteSettings(name: AppRoute.login);
    }
  }
}
