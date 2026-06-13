import 'package:ecomapp/core/class/crud.dart';
import 'package:ecomapp/linkapi.dart';

class VerifyCodeSignUpData {
  Crud crud;
  VerifyCodeSignUpData(this.crud);

  postData(String email ,String verifycode) async {
    var response = await crud.postData(AppLink.VerifyCodeSignUp, {
      "email" : email,
      "verifycode" : verifycode,
    });
    return response.fold((l) => l, (r) => r);
  }
}
