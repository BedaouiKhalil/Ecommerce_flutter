

import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/link_api.dart';

class SignupData {
  Crud crud;
  SignupData(this.crud);
  postdata(String username ,String password ,String email ,String phone ) async {
    var response = await crud.postData(AppLink.signUp, {
      "username" : username , 
      "password" : password  , 
      "email" : email , 
      "phone" : phone  , 
    });
    return response.fold((l) => l, (r) => r);
  }
}