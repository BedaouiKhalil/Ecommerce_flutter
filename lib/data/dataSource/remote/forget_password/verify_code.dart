

import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/link_api.dart';

class VerifyCodeForgetPasswordData {
  Crud crud;
  VerifyCodeForgetPasswordData(this.crud);
  postdata(String email ,String verifycode) async {
    var response = await crud.postData(AppLink.verifyCodeForgetPassword, {
      "email" : email , 
      "verifyCode" : verifycode   
    });
    return response.fold((l) => l, (r) => r);
  }
}