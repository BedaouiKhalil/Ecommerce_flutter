import 'package:ecommerce/controller/product_details_controller.dart';
import 'package:ecommerce/core/class/handling_data_view.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/view/widget/product_details/price_count.dart';
import 'package:ecommerce/view/widget/product_details/top_page_product_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductDetailsControllerImp controller = Get.put(
      ProductDetailsControllerImp(),
    );
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: 40,
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: AppColor.secondColor,
          onPressed: () {
            Get.toNamed(AppRoute.cart);
          },
          child: const Text(
            "Go To Cart",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: GetBuilder<ProductDetailsControllerImp>(
        builder:
            (controller) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: ListView(
                children: [
                  const TopProductPageDetails(),
                  const SizedBox(height: 100),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${controller.itemsModel.itemName}",
                          style: Theme.of(context).textTheme.displayLarge!
                              .copyWith(color: AppColor.fourthColor),
                        ),
                        const SizedBox(height: 10),
                        PriceAndCountItems(
                          onAdd: () {
                            controller.add();
                          },
                          onRemove: () {
                            controller.remove();
                          },
                          price: "${controller.itemsModel.itemPriceDiscount}",
                          count: "${controller.countitems}",
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "${controller.itemsModel.itemDesc}",
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: AppColor.grey2,
                          ),
                        ),
                        const SizedBox(height: 10),
                        // Text("Color",
                        //     style: Theme.of(context).textTheme.headline1!.copyWith(
                        //           color: AppColor.fourthColor,
                        //         )),
                        // const SizedBox(height: 10),
                        // const SubitemsList()
                      ],
                    ),
                  ),
                ],
              ),
            ),
      ),
    );
  }
}
