class ItemsModel {
  String itemId;
  String itemName;
  String itemNameAr;
  String itemDesc;
  String itemDescAr;
  String itemImage;
  String itemCount;
  String itemActive;
  String itemPrice;
  String itemDiscount;
  String itemDate;
  String itemCat;
  String categoryId;
  String categoryName;
  String categoryNameAr;
  String categoryImage;
  String categoryDatetime;
  String? favorite;
  String itemPriceDiscount;

  ItemsModel({
    required this.itemId,
    required this.itemName,
    required this.itemNameAr,
    required this.itemDesc,
    required this.itemDescAr,
    required this.itemImage,
    required this.itemCount,
    required this.itemActive,
    required this.itemPrice,
    required this.itemDiscount,
    required this.itemDate,
    required this.itemCat,
    required this.categoryId,
    required this.categoryName,
    required this.categoryNameAr,
    required this.categoryImage,
    required this.categoryDatetime,
    required this.favorite,
    required this.itemPriceDiscount,
  });

  factory ItemsModel.fromJson(Map<String, dynamic> json) {
    return ItemsModel(
      itemId: json['item_id']?.toString() ?? '',
      itemName: json['item_name']?.toString() ?? '',
      itemNameAr: json['item_name_ar']?.toString() ?? '',
      itemDesc: json['item_description']?.toString() ?? '',
      itemDescAr: json['item_description_ar']?.toString() ?? '',
      itemImage: json['item_image']?.toString() ?? '',
      itemCount: json['item_count']?.toString() ?? '',
      itemActive: json['item_active']?.toString() ?? '',
      itemPrice: json['item_price']?.toString() ?? '',
      itemDiscount: json['item_discount']?.toString() ?? '',
      itemDate: json['item_date']?.toString() ?? '',
      itemCat: json['item_cat']?.toString() ?? '',
      categoryId: json['category_id']?.toString() ?? '',
      categoryName: json['category_name']?.toString() ?? '',
      categoryNameAr: json['category_nama_ar']?.toString() ?? '',
      categoryImage: json['category_image']?.toString() ?? '',
      categoryDatetime: json['category_datetime']?.toString() ?? '',
      favorite: json['favorite']?.toString() ?? '',
      itemPriceDiscount: json['item_price_discount']?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'item_id': itemId,
      'item_name': itemName,
      'item_name_ar': itemNameAr,
      'item_desc': itemDesc,
      'item_desc_ar': itemDescAr,
      'item_image': itemImage,
      'item_count': itemCount,
      'item_active': itemActive,
      'item_price': itemPrice,
      'item_discount': itemDiscount,
      'item_date': itemDate,
      'item_cat': itemCat,
      'category_id': categoryId,
      'category_name': categoryName,
      'category_nama_ar': categoryNameAr,
      'category_image': categoryImage,
      'category_datetime': categoryDatetime,
      'favorite': favorite,
      'item_price_discount': itemPriceDiscount,
    };
  }
}
