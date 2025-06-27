
class AddressModel {
  String? id;
  String? name;
  String? userId;
  String? city;
  String? street;
  String? lat;
  String? addressLong;

  AddressModel({
    this.id,
    this.name,
    this.userId,
    this.city,
    this.street,
    this.lat,
    this.addressLong,
  });

  AddressModel.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toString();
    name = json['name']?.toString();
    userId = json['user_id']?.toString();
    city = json['city']?.toString();
    street = json['street']?.toString();
    lat = json['lat']?.toString();
    addressLong = json['address_long']?.toString();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'user_id': userId,
      'city': city,
      'street': street,
      'lat': lat,
      'address_long': addressLong,
    };
  }
}
