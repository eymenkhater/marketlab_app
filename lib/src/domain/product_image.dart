class ProductImage {
  ProductImage({this.id, this.imagePath});
  int id;
  String imagePath;

  factory ProductImage.fromJson(Map<String, dynamic> json) => ProductImage(
        id: json["id"] == null ? null : json["id"],
        imagePath: json["imagePath"] == null ? null : json["imagePath"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "imagePath": imagePath == null ? null : imagePath,
      };
}
