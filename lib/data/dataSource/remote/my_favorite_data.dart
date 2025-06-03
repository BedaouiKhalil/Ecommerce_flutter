

import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/link_api.dart';

class MyFavoriteData {
  Crud crud;
  MyFavoriteData(this.crud);
  getData(String userId) async {
    var response = await crud.postData(AppLink.favoriteView, {"userId": userId});
    return response.fold((l) => l, (r) => r);
  }

  deleteData(String favoriteId) async {
    var response = await crud.postData(AppLink.deletefromfavroite, {"favoriteId": favoriteId});
    return response.fold((l) => l, (r) => r);
  }
}