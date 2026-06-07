import 'package:ecomapp/core/constant/routes.dart';
import 'package:ecomapp/core/services/servecies.dart';
import 'package:ecomapp/data/datasource/static/static.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class OnBoardingCntroller extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingCntrollerImp extends OnBoardingCntroller {
  late PageController pagecontroller;

  int currentPage = 0;
  Myservices myServices = Get.find();
  @override
  next() {
    if (currentPage >= onBoardingList.length - 1) {
      myServices.sharedPreferences.setString("onboarding", "1") ;
      Get.offAllNamed(AppRoute.login);
    } else {
      currentPage++;
      pagecontroller.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 900),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pagecontroller = PageController();
    super.onInit();
  }
}
