class MyFavoriteModel {
  String? favoriteId;
  String? favoriteUserId;
  String? favoriteItemId;
  String? itemId;
  String? itemName;
  String? itemNameAr;
  String? itemPrice;
  String? itemImage;
  String? itemDate;
  String? itemCount;
  String? itemDiscount;
  String? itemActive;
  String? itemDescription;
  String? itemDescriptionAr;
  String? itemCategoryId;
  String? userId;

  MyFavoriteModel({
    this.favoriteId,
    this.favoriteUserId,
    this.favoriteItemId,
    this.itemId,
    this.itemName,
    this.itemNameAr,
    this.itemPrice,
    this.itemImage,
    this.itemDate,
    this.itemCount,
    this.itemDiscount,
    this.itemActive,
    this.itemDescription,
    this.itemDescriptionAr,
    this.itemCategoryId,
    this.userId,
  });

  MyFavoriteModel.fromJson(Map<String, dynamic> json) {
    favoriteId = json['favorite_id'].toString();
    favoriteUserId = json['favorite_user_id'].toString();
    favoriteItemId = json['favorite_item_id'].toString();
    itemId = json['item_id'].toString();
    itemName = json['item_name'].toString();
    itemNameAr = json['item_name_ar'].toString();
    itemPrice = json['item_price'].toString();
    itemImage = json['item_image'].toString();
    itemDate = json['item_date'].toString();
    itemCount = json['item_count'].toString();
    itemDiscount = json['item_discount'].toString();
    itemActive = json['item_active'].toString();
    itemDescription = json['item_description'].toString();
    itemDescriptionAr = json['item_description_ar'].toString();
    itemCategoryId = json['item_category_id'].toString();
    userId = json['user_id'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['favorite_id'] = this.favoriteId;
    data['favorite_user_id'] = this.favoriteUserId;
    data['favorite_item_id'] = this.favoriteItemId;
    data['item_id'] = this.itemId;
    data['item_name'] = this.itemName;
    data['item_name_ar'] = this.itemNameAr;
    data['item_price'] = this.itemPrice;
    data['item_image'] = this.itemImage;
    data['item_date'] = this.itemDate;
    data['item_count'] = this.itemCount;
    data['item_discount'] = this.itemDiscount;
    data['item_active'] = this.itemActive;
    data['item_description'] = this.itemDescription;
    data['item_description_ar'] = this.itemDescriptionAr;
    data['item_category_id'] = this.itemCategoryId;
    data['user_id'] = this.userId;
    return data;
  }
}
