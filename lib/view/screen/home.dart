import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/controller/home_controller.dart';
import 'package:ecommerce/core/class/handling_data_view.dart';
import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/data/model/items.dart';
import 'package:ecommerce/link_api.dart';
import 'package:ecommerce/view/widget/custom_app_bar.dart';

import 'package:ecommerce/view/widget/home/custom_card_home.dart';
import 'package:ecommerce/view/widget/home/custom_title_home.dart';
import 'package:ecommerce/view/widget/home/list_categories_home.dart';
import 'package:ecommerce/view/widget/home/list_items_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
      builder:
          (controller) => Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
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
                HandlingDataView(
                  statusRequest: controller.statusRequest,
                  widget:
                      !controller.isSearch
                          ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              CustomCardHome(
                                title: "A summer surprise",
                                body: "Cashback 20%",
                              ),
                              CustomTitleHome(title: "Categories"),
                              ListCategoriesHome(),
                              CustomTitleHome(title: "Product for you"),
                              ListItemsHome(),
                            ],
                          )
                          : ListItemsSearch(listdatamodel: controller.listdata),
                ),

                // const CustomTitleHome(title: "Offer"),
                // const ListItemsHome()
              ],
            ),
          ),
    );
  }
}

class ListItemsSearch extends GetView<HomeControllerImp> {
  final List<ItemsModel> listdatamodel;
  const ListItemsSearch({Key? key, required this.listdatamodel})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listdatamodel.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            controller.goToPageProductDetails(listdatamodel[index]);
          },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Card(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: CachedNetworkImage(
                        imageUrl:
                            "${AppLink.imagestItems}/${listdatamodel[index].itemImage}",
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: ListTile(
                        title: Text(listdatamodel[index].itemName!),
                        subtitle: Text(listdatamodel[index].categoryName!),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
