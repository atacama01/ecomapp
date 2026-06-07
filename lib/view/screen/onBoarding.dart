import 'package:ecomapp/controller/onBoarding_controller.dart';
import 'package:ecomapp/core/constant/color.dart';
import 'package:ecomapp/view/widget/custombutton.dart';
import 'package:ecomapp/view/widget/customslider.dart';
import 'package:ecomapp/view/widget/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingCntrollerImp());
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Column(
        children: [
          Expanded(flex: 3, child: CustomSliderOnBoarding()),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                CustomDotControllerOnBoarding(),
                SizedBox(height: 20),
                CustombuttonOnBoarding(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
