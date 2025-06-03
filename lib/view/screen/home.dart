import 'package:ecommerce/controller/home_controller.dart';
import 'package:ecommerce/core/class/handling_data_view.dart';
import 'package:ecommerce/core/constant/routes.dart';
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
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ListView(
                  children: [
                    CustomAppBar(
                        titleappbar: "Find Product",
                        onPressedIcon: () {},
                        onPressedSearch: () {} , 
                        onPressedIconFavorite: (){
                          Get.toNamed(AppRoute.myfavroite) ; 
                        },
                        ),
                    const CustomCardHome(
                        title: "A summer surprise", body: "Cashback 20%"),
                    const CustomTitleHome(title: "Categories"),
                    const ListCategoriesHome(),
                    const CustomTitleHome(title: "Product for you"),
                    const ListItemsHome(),
                  ],
                ))));
  }
}