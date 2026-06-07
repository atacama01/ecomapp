import 'package:ecomapp/controller/onBoarding_controller.dart';
import 'package:ecomapp/core/constant/color.dart';
import 'package:ecomapp/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingCntrollerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pagecontroller,
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(height: 100),

            Image.asset(
              onBoardingList[i].image!,
              width: 400,
              height: 320,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 30),
            Text(
              onBoardingList[i].title!,
              style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: AppColor.black,
    ),
            ),
            SizedBox(height: 50),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                onBoardingList[i].body!,
                textAlign: TextAlign.center,
                style: TextStyle(
      fontSize: 16,
      height: 2,
      color: AppColor.grey,
      fontWeight: FontWeight.bold,
    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
