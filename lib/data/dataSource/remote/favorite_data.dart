import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/link_api.dart';

class FavoriteData {
  Crud crud;
  FavoriteData(this.crud);
  addFavorite(String userId, String itemId) async {
    var response = await crud.postData(
        AppLink.favoriteAdd, {"userId": userId, "itemId": itemId});
    return response.fold((l) => l, (r) => r);
  }

  removeFavorite(String userId, String itemId) async {
    var response = await crud.postData(
        AppLink.favoriteRemove, {"userId": userId, "itemId": itemId});
    return response.fold((l) => l, (r) => r);
  }
}