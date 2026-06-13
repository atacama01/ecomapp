
import 'package:ecomapp/controller/auth/verifycodesignup_controller.dart';
import 'package:ecomapp/core/class/statusrequest.dart';
import 'package:ecomapp/core/constant/color.dart';
import 'package:ecomapp/view/auth/customtextbodyauth.dart';
import 'package:ecomapp/view/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCodeSignUp extends StatelessWidget {
  const VerifyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeSignUpControllerImp controller = Get.put(VerifyCodeSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text(
          "31".tr,
          style: Theme.of(
            context,
          ).textTheme.headlineLarge!.copyWith(color: AppColor.grey),
        ),
      ),
      body: GetBuilder<VerifyCodeSignUpControllerImp>(builder: (controller) => controller.statusrequest == StatusRequest.loading ? Center(child: Text("Loading..."),) :
       Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: ListView(
          children: [
            SizedBox(height: 20),
            Customtexttitleauth(text: "32".tr),
            SizedBox(height: 15),
            CustomtextBodyeauth(text: "33".tr),
            SizedBox(height: 60),
            OtpTextField(
              borderRadius: BorderRadius.circular(8),
              fieldWidth: 50,
              numberOfFields: 5,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                controller.goTosucssesSignUp();
              }, // end onSubmit
            ),
          ],
        ),
      ),)
    );
  }
}
