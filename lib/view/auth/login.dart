import 'package:ecomapp/controller/auth/login_controller.dart';
import 'package:ecomapp/core/constant/color.dart';
import 'package:ecomapp/core/functions/alertexitapp.dart';
import 'package:ecomapp/core/functions/validinput.dart';
import 'package:ecomapp/view/auth/custombuttonauth.dart';
import 'package:ecomapp/view/auth/customtextbodyauth.dart';
import 'package:ecomapp/view/auth/customtextformauth.dart';
import 'package:ecomapp/view/auth/customtextloginorsignup.dart';
import 'package:ecomapp/view/auth/customtexttitleauth.dart';
import 'package:ecomapp/view/auth/logoauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text(
          "16".tr,
          style: Theme.of(
            context,
          ).textTheme.headlineLarge!.copyWith(color: AppColor.grey),
        ),
      ),
      body: GetBuilder<LoginControllerImp>(
        builder: (controller) => PopScope(
          canPop: false,
          onPopInvokedWithResult: (bool didPop, Object? result) async {
            if (!didPop) {
              await alertExitApp();
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Form(
              key: controller.formstate,
              child: ListView(
                children: [
                  LogoAuth(),
                  SizedBox(height: 20),
                  Customtexttitleauth(text: "2".tr),
                  SizedBox(height: 15),
                  CustomtextBodyeauth(text: "10".tr),
                  SizedBox(height: 60),
                  CustomTextFormAuth(
                    isNumber: false,
                    hintText: "12".tr,
                    labelText: "11".tr,
                    suffixIcon: Icons.email_outlined,
                    mycontroller: controller.email,
                    validator: (val) {
                      return validInput(val!, 5, 100, "email");
                    },
                  ),
                  SizedBox(height: 15),
                  CustomTextFormAuth(
                    isNumber: false,
                    obscureText: controller.isshowpassword,
                    onTapIcon: () {
                      controller.showPassword();
                    },
                    hintText: "14".tr,
                    labelText: "13".tr,
                    suffixIcon: Icons.lock_outline_rounded,
                    mycontroller: controller.password,
                    validator: (val) {
                      return validInput(val!, 5, 20, "password");
                    },
                  ),
                  // Text(
                  //   "15".tr,
                  //   textAlign: TextAlign.end,
                  //   style: Theme.of(context).textTheme.bodyLarge,
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Customtextloginorsignup(
                        text: "",
                        textRoute: "15".tr,
                        onTap: () {
                          controller.goToForgetPassword();
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  CustomButtonAuth(
                    text: "16".tr,
                    onPressed: () {
                      controller.login();
                    },
                  ),
                  SizedBox(height: 20),
                  Customtextloginorsignup(
                    text: "17".tr,
                    textRoute: "18".tr,
                    onTap: () {
                      controller.goToSignUp();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
