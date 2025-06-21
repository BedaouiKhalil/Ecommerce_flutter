class CartModel {
  String? userId;
  String? itemId;
  String? itemName;
  String? itemNameAr;
  String? itemPrice;
  String? itemDescription;
  String? itemDescriptionAr;
  String? itemImage;
  String? itemCategoryId;
  String? itemCountInCart;
  String? itemPriceInCart;
  String? itemDiscount;

  CartModel({
    this.userId,
    this.itemId,
    this.itemName,
    this.itemNameAr,
    this.itemPrice,
    this.itemDescription,
    this.itemDescriptionAr,
    this.itemImage,
    this.itemCategoryId,
    this.itemCountInCart,
    this.itemPriceInCart,
    this.itemDiscount,
  });

  CartModel.fromJson(Map<String, dynamic> json) {
    userId = json['user_id']?.toString();
    itemId = json['item_id']?.toString();
    itemName = json['item_name']?.toString();
    itemNameAr = json['item_name_ar']?.toString();
    itemPrice = json['item_price']?.toString();
    itemDescription = json['item_description']?.toString();
    itemDescriptionAr = json['item_description_ar']?.toString();
    itemImage = json['item_image']?.toString();
    itemCategoryId = json['item_category_id']?.toString();
    itemCountInCart = json['item_count_in_cart']?.toString();
    itemPriceInCart = json['item_price_in_cart']?.toString();
    itemDiscount = json['item_discount']?.toString();
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'item_id': itemId,
      'item_name': itemName,
      'item_name_ar': itemNameAr,
      'item_price': itemPrice,
      'item_description': itemDescription,
      'item_description_ar': itemDescriptionAr,
      'item_image': itemImage,
      'item_category_id': itemCategoryId,
      'item_count_in_cart': itemCountInCart,
      'item_price_in_cart': itemPriceInCart,
      'item_discount': itemDiscount,
    };
  }
}
