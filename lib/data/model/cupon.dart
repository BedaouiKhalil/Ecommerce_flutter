class CouponModel {
  String? id;
  String? name;
  String? count;
  String? discount;
  String? expireDate;

  CouponModel({
    this.id,
    this.name,
    this.count,
    this.discount,
    this.expireDate,
  });

  CouponModel.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toString();
    name = json['name']?.toString();
    count = json['count']?.toString();
    discount = json['discount']?.toString();
    expireDate = json['expire_date']?.toString();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'count': count,
      'discount': discount,
      'expire_date': expireDate,
    };
  }
}
