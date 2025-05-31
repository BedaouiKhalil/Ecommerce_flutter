import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/controller/items_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/function/translate_data_base.dart';
import 'package:ecommerce/data/model/items.dart';
import 'package:ecommerce/link_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListItems extends GetView<ItemsControllerImp> {
  final ItemsModel itemsModel;
  const CustomListItems({Key? key, required this.itemsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
         controller.goToPageProductDetails(itemsModel)  ; 
      },
        child: Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag:"${itemsModel.itemId}" ,
                child: CachedNetworkImage(
                  imageUrl: AppLink.imagestItems + "/" + itemsModel.itemImage!,
                  height: 100,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 10) , 
              Text(translateDatabase(itemsModel.itemNameAr, itemsModel.itemName),
                  style:const TextStyle(
                      color: AppColor.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
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
                            (index) =>const Icon(
                                  Icons.star,
                                  size: 15,
                                ))
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${itemsModel.itemPrice} \$",
                      style:const TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "sans")),
                  IconButton(
                      onPressed: () {},
                      icon:const Icon(
                        Icons.favorite,
                        color: AppColor.primaryColor,
                      ))
                ],
              )
            ]),
      ),
    ));
  }
}