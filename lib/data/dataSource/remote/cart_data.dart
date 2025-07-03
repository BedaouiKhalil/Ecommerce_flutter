

import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/link_api.dart';

class CartData {
  Crud crud;
  CartData(this.crud);
  addCart(String userId, String itemId) async {
    var response = await crud
        .postData(AppLink.cartadd, {"userId": userId, "itemId": itemId});
    return response.fold((l) => l, (r) => r);
  }

  deleteCart(String userId, String itemId) async {
    var response = await crud
        .postData(AppLink.cartdelete, {"userId": userId, "itemId": itemId});
    return response.fold((l) => l, (r) => r);
  }

  getCountCart(String userId, String itemId) async {
    var response = await crud.postData(
        AppLink.cartgetcountitems, {"userId": userId, "itemId": itemId});
    return response.fold((l) => l, (r) => r);
  }

  viewCart(String userId) async {
    var response = await crud.postData(AppLink.cartview, {
      "userId": userId,
    });
    return response.fold((l) => l, (r) => r);
  }

  checkCoupon(String couponName) async {
    var response =
        await crud.postData(AppLink.checkcoupon, {"couponName": couponName});
    return response.fold((l) => l, (r) => r);
  }
}