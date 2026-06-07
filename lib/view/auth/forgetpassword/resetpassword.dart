import 'package:ecomapp/controller/auth/resetpassword_controller.dart';
import 'package:ecomapp/core/constant/color.dart';
import 'package:ecomapp/core/functions/validinput.dart';
import 'package:ecomapp/view/auth/custombuttonauth.dart';
import 'package:ecomapp/view/auth/customtextbodyauth.dart';
import 'package:ecomapp/view/auth/customtextformauth.dart';
import 'package:ecomapp/view/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller = Get.put(
      ResetPasswordControllerImp(),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text(
          "34".tr,
          style: Theme.of(
            context,
          ).textTheme.headlineLarge!.copyWith(color: AppColor.grey),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              SizedBox(height: 20),
              Customtexttitleauth(text: "35".tr),
              SizedBox(height: 15),
              CustomtextBodyeauth(text: "36".tr),
              SizedBox(height: 60),
              CustomTextFormAuth(
                isNumber: false,
                obscureText: true,
                hintText: "14".tr,
                labelText: "13".tr,
                suffixIcon: Icons.lock_outline_rounded,
                mycontroller: controller.password,
                validator: (val) {
                  return validInput(val!, 5, 20, "password");
                },
              ),
              SizedBox(height: 15),
              CustomTextFormAuth(
                isNumber: false,
                obscureText: true,
                hintText: "38".tr,
                labelText: "39".tr,
                suffixIcon: Icons.lock_outline_rounded,
                mycontroller: controller.repassword,
                validator: (val) {
                  return validInput(val!, 5, 20, "repassword");
                },
              ),

              SizedBox(height: 40),
              CustomButtonAuth(
                text: "37".tr,
                onPressed: () {
                  controller.resetpassword();
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
