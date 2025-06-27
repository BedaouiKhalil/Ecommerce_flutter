

import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/link_api.dart';

class AddressData {
  Crud crud;
  AddressData(this.crud);
  getData(String userId) async {
    var response =
        await crud.postData(AppLink.addressView, {"userId": userId});
    return response.fold((l) => l, (r) => r);
  }

  addData(String userId, String name, String city, String street) async {
    var response = await crud.postData(AppLink.addressAdd, {
      "userId": userId,
      "name": name,
      "city": city,
      "street": street,
    });
    return response.fold((l) => l, (r) => r);
  }

  deleteData(String addressId) async {
    var response =
        await crud.postData(AppLink.addressDelete, {"addressId": addressId});
    return response.fold((l) => l, (r) => r);
  }
}