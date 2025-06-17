class Device {
  String model;
  double price;
  String img;
  String developer;
  double rating;
  String des;

  Device(
      this.model, this.price, this.img, this.developer, this.rating, this.des);
  factory Device.fromJson(dynamic json) {
    return Device(json['model'], json['price'] as double, json['img'],
        json['developer'], json['rating'] as double, json['desc']);
  }
}
