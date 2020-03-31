class Listing {
  int id;
  int stock;
  double price;

  Listing({this.id, this.price, this.stock});

  factory Listing.fromJson(Map<String, dynamic> json) => Listing(
        id: json["id"] == null ? null : json["id"],
        price: json["price"] == null ? null : json["price"].toDouble(),
        stock: json["stock"] == null ? null : json["stock"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "price": price == null ? null : price,
        "stock": stock == null ? null : stock,
      };
}
