import 'package:ecomapp/controller/auth/sucssesresetpass_controller.dart';
import 'package:ecomapp/core/constant/color.dart';
import 'package:ecomapp/view/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:get/instance_manager.dart';

class Sucssesresetpassword extends StatelessWidget {
  const Sucssesresetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    SucssesResetPasswordControllerImp controller = Get.put(
      SucssesResetPasswordControllerImp(),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text(
          "45".tr,
          style: Theme.of(
            context,
          ).textTheme.headlineLarge!.copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 60),
            Center(
              child: Icon(
                Icons.check_circle_outline,
                size: 180,
                color: AppColor.primaryColor,
              ),
            ),
            SizedBox(height: 40),
            Text(
              "46".tr,
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium!.copyWith(color: AppColor.grey),
            ),
            SizedBox(height: 40),
            CustomButtonAuth(
              text: "44".tr,
              onPressed: () {
                controller.goToLogin();
              },
            ),
          ],
        ),
      ),
    );
  }
}
