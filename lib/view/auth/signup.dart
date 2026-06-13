import 'package:ecomapp/controller/auth/signup_controller.dart';
import 'package:ecomapp/core/class/statusrequest.dart';
import 'package:ecomapp/core/constant/color.dart';
import 'package:ecomapp/core/functions/alertexitapp.dart';
import 'package:ecomapp/core/functions/validinput.dart';
import 'package:ecomapp/view/auth/custombuttonauth.dart';
import 'package:ecomapp/view/auth/customtextbodyauth.dart';
import 'package:ecomapp/view/auth/customtextformauth.dart';
import 'package:ecomapp/view/auth/customtextloginorsignup.dart';
import 'package:ecomapp/view/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text(
          "18".tr,
          style: Theme.of(
            context,
          ).textTheme.headlineLarge!.copyWith(color: AppColor.grey),
        ),
      ),
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (bool didPop, Object? result) async {
          if (!didPop) {
            await alertExitApp();
          }
        },
        child: GetBuilder<SignUpControllerImp>(
          builder: (controller) =>
              controller.statusrequest == StatusRequest.loading
              ? Center(child: Text("Loading..."))
              : Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  child: Form(
                    key: controller.formstate,
                    child: ListView(
                      children: [
                        SizedBox(height: 60),
                        Customtexttitleauth(text: "26".tr),
                        SizedBox(height: 15),
                        CustomtextBodyeauth(text: "25".tr),
                        SizedBox(height: 60),
                        CustomTextFormAuth(
                          isNumber: false,
                          hintText: "22".tr,
                          labelText: "21".tr,
                          suffixIcon: Icons.person_2_outlined,
                          mycontroller: controller.username,
                          validator: (val) {
                            return validInput(val!, 5, 20, "username");
                          },
                        ),
                        SizedBox(height: 15),
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
                          isNumber: true,
                          hintText: "24".tr,
                          labelText: "23".tr,
                          suffixIcon: Icons.phone_outlined,
                          mycontroller: controller.phone,
                          validator: (val) {
                            return validInput(val!, 5, 12, "phone");
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
                        SizedBox(height: 25),
                        CustomButtonAuth(
                          text: "18".tr,
                          onPressed: () {
                            controller.signup();
                          },
                        ),
                        SizedBox(height: 20),
                        Customtextloginorsignup(
                          text: "19".tr,
                          textRoute: "20".tr,
                          onTap: () {
                            controller.goToLogin();
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
