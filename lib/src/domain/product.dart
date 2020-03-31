class Product {
  int id;
  String name;
  String code;
  String image;

  Product({this.id, this.name, this.code, this.image});

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"].toDouble(),
        code: json["code"] == null ? null : json["code"],
        image: json["image"] == null ? null : json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "code": code == null ? null : code,
        "image": image == null ? null : image,
      };
}
