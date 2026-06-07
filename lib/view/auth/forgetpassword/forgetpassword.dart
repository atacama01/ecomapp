import 'package:ecomapp/controller/auth/forgetpassword_controller.dart';
import 'package:ecomapp/core/constant/color.dart';
import 'package:ecomapp/core/functions/validinput.dart';
import 'package:ecomapp/view/auth/custombuttonauth.dart';
import 'package:ecomapp/view/auth/customtextbodyauth.dart';
import 'package:ecomapp/view/auth/customtextformauth.dart';
import 'package:ecomapp/view/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller = Get.put(
      ForgetPasswordControllerImp(),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text(
          "27".tr,
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
              Customtexttitleauth(text: "28".tr),
              SizedBox(height: 15),
              CustomtextBodyeauth(text: "29".tr),
              SizedBox(height: 60),
              CustomTextFormAuth(isNumber: false,
                hintText: "12".tr,
                labelText: "11".tr,
                suffixIcon: Icons.email_outlined,
                mycontroller: controller.email,
                validator: (val) {return validInput(val!, 5, 20, "password");},
              ),

              SizedBox(height: 40),
              CustomButtonAuth(
                text: "30".tr,
                onPressed: () {
                  controller.checkemail();
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
