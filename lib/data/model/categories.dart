class CategoriesModel {
  String id;
  String name;
  String nameAr;
  String image;
  String datetime;

  CategoriesModel({
    required this.id,
    required this.name,
    required this.nameAr,
    required this.image,
    required this.datetime,
  });

  factory CategoriesModel.fromJson(Map<String, dynamic> json) {
    return CategoriesModel(
      id: json['id']?.toString() ?? '',
      name: json['name']?.toString() ?? '',
      nameAr: json['name_ar']?.toString() ?? '',
      image: json['image']?.toString() ?? '',
      datetime: json['datetime']?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'name_ar': nameAr,
      'image': image,
      'datetime': datetime,
    };
  }
}
