import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/link_api.dart';

class ItemsData {
  Crud crud;
  ItemsData(this.crud);
  getData(String id) async {
    var response = await crud.postData(AppLink.items, {"id" : id.toString()});
    return response.fold((l) => l, (r) => r);
  }
}