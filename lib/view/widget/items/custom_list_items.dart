import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/controller/favorite_controller.dart';
import 'package:ecommerce/controller/items_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/image_asset.dart';
import 'package:ecommerce/core/function/translate_data_base.dart';
import 'package:ecommerce/data/model/items.dart';
import 'package:ecommerce/link_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListItems extends GetView<ItemsControllerImp> {
  final ItemsModel itemsModel;
  // final bool active;
  const CustomListItems({Key? key, required this.itemsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToPageProductDetails(itemsModel);
      },
      child: Card(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Hero(
                    tag: "${itemsModel.itemId}",
                    child: CachedNetworkImage(
                      imageUrl:
                          AppLink.imagestItems + "/" + itemsModel.itemImage!,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    translateDatabase(
                      itemsModel.itemNameAr,
                      itemsModel.itemName,
                    ),
                    style: const TextStyle(
                      color: AppColor.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Rating 3.5 ", textAlign: TextAlign.center),
                      Container(
                        alignment: Alignment.bottomCenter,
                        height: 22,
                        child: Row(
                          children: [
                            ...List.generate(
                              5,
                              (index) => const Icon(Icons.star, size: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${itemsModel.itemPriceDiscount} \$",
                        style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "sans",
                        ),
                      ),
                      GetBuilder<FavoriteController>(
                        builder:
                            (controller) => IconButton(
                              onPressed: () {
                                if (controller.isFavorite[itemsModel.itemId] ==
                                    "1") {
                                  controller.setFavorite(
                                    itemsModel.itemId,
                                    "0",
                                  );
                                  controller.removeFavorite(itemsModel.itemId!);
                                } else {
                                  controller.setFavorite(
                                    itemsModel.itemId,
                                    "1",
                                  );
                                  controller.addFavorite(itemsModel.itemId!);
                                }
                              },
                              icon: Icon(
                                controller.isFavorite[itemsModel.itemId] == "1"
                                    ? Icons.favorite
                                    : Icons.favorite_border_outlined,
                                color: AppColor.primaryColor,
                              ),
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (itemsModel.itemDiscount != "0")
              Positioned(
                top: 4,
                left: 4,
                child: Image.asset(AppImageAsset.saleOne, width: 40),
              ),
          ],
        ),
      ),
    );
  }
}
