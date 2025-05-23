class CategoriesModel {
  String? id;
  String? name;
  String? namaAr;
  String? image;
  String? datetime;

  CategoriesModel({
    this.id,
    this.name,
    this.namaAr,
    this.image,
    this.datetime,
  });

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    namaAr = json['nama_ar'];
    image = json['image'];
    datetime = json['datetime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = this.id;
    data['name'] = this.name;
    data['nama_ar'] = this.namaAr;
    data['image'] = this.image;
    data['datetime'] = this.datetime;
    return data;
  }
}
