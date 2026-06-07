import 'package:ecomapp/core/constant/routes.dart';
import 'package:ecomapp/core/middleware/mymiddleware.dart';
import 'package:ecomapp/test.dart';
import 'package:ecomapp/view/auth/forgetpassword/forgetpassword.dart';
import 'package:ecomapp/view/auth/login.dart';
import 'package:ecomapp/view/auth/signup.dart';
import 'package:ecomapp/view/auth/forgetpassword/sucssesresetpassword.dart';
import 'package:ecomapp/view/auth/sucssessignup.dart';
import 'package:ecomapp/view/auth/forgetpassword/verifycode.dart';
import 'package:ecomapp/view/auth/forgetpassword/resetpassword.dart';
import 'package:ecomapp/view/auth/verifyemailsignup.dart';
import 'package:ecomapp/view/screen/language.dart';
import 'package:ecomapp/view/screen/onBoarding.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const Language(), middlewares: [MyMiddleware()]),
  // GetPage(name: "/", page: () => TestView()),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signup, page: () => const SignUp()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
  GetPage(name: AppRoute.forgetpassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verifypassword, page: () => const VerifyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
    name: AppRoute.sucssesResetPassword,
    page: () => const Sucssesresetpassword(),
  ),
  GetPage(name: AppRoute.sucssesSignUp, page: () => const Sucssessignup()),
  GetPage(
    name: AppRoute.verifycodesignup,
    page: () => const VerifyCodeSignUp(),
  ),
];

// Map<String, Widget Function(BuildContext)> routess = {
//   AppRoute.login: (context) => const Login(),
//   AppRoute.signup: (context) => const SignUp(),
//   AppRoute.onBoarding: (context) => const OnBoarding(),
//   AppRoute.forgetpassword: (context) => const ForgetPassword(),
//   AppRoute.verifypassword: (context) => const VerifyCode(),
//   AppRoute.resetPassword: (context) => const ResetPassword(),
//   AppRoute.sucssesResetPassword: (context) => const Sucssesresetpassword(),
//   AppRoute.sucssesSignUp: (context) => const Sucssessignup(),
//   AppRoute.verifycodesignup: (context) => const VerifyCodeSignUp(),
// };
