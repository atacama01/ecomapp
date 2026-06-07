import 'package:ecomapp/controller/onBoarding_controller.dart';
import 'package:ecomapp/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustombuttonOnBoarding extends GetView<OnBoardingCntrollerImp> {
  const CustombuttonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
        textColor: Colors.white,
        onPressed: () {
          controller.next();
        },
        color: AppColor.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8),
        ),
        child: Text("9".tr),
      ),
    );
  }
}
