import 'package:ecommerce/controller/favorite_controller.dart';
import 'package:ecommerce/controller/items_controller.dart';
import 'package:ecommerce/core/class/handling_data_view.dart';
import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/data/model/items.dart';
import 'package:ecommerce/view/screen/home.dart';
import 'package:ecommerce/view/widget/custom_app_bar.dart';
import 'package:ecommerce/view/widget/items/custom_list_items.dart';
import 'package:ecommerce/view/widget/items/list_categories_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ItemsControllerImp controller = Get.put(ItemsControllerImp());
    FavoriteController controllerFav = Get.put(FavoriteController());

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            CustomAppBar(
              mycontroller: controller.search!,
              titleappbar: "Find Product",
              // onPressedIcon: () {},
              onPressedSearch: () {
                controller.onSearchItems();
              },
              onChanged: (val) {
                controller.checkSearch(val);
              },
              onPressedIconFavorite: () {
                Get.toNamed(AppRoute.myfavroite);
              },
            ),
            const SizedBox(height: 20),
            const ListCategoriesItems(),
            GetBuilder<ItemsControllerImp>(
              builder:
                  (controller) => HandlingDataView(
                    statusRequest: controller.statusRequest,
                    widget:
                        !controller.isSearch
                            ? GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: controller.data.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 0.7,
                                  ),
                              itemBuilder: (BuildContext context, index) {
                                controllerFav.isFavorite[controller
                                        .data[index]['items_id']] =
                                    controller.data[index]['favorite'];
                                return CustomListItems(
                                  itemsModel: ItemsModel.fromJson(
                                    controller.data[index],
                                  ),
                                );
                              },
                            )
                            : ListItemsSearch(
                              listdatamodel: controller.listdata,
                            ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
