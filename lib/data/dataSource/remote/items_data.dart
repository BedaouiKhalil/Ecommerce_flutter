

import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/link_api.dart';

class ItemsData {
  Crud crud;
  ItemsData(this.crud);
  getData(String categoryId , String userId) async {
    var response = await crud.postData(AppLink.items, {"categoryId" : categoryId.toString() , "userId" : userId});
    return response.fold((l) => l, (r) => r);
  }
}