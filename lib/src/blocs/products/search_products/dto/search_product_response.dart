import 'package:marketlab_app/src/domain/product.dart';
import 'package:marketlab_app/src/domain/product_image.dart';
import 'package:marketlab_app/src/domain/resource.dart';

class SearchProductResponse extends Product {
  SearchProductResponse({int id, String name, String code, this.minPrice, this.productImages, this.resources}) : super(id: id, name: name, code: code);

  double minPrice;
  List<ProductImage> productImages;
  List<Resource> resources;

  factory SearchProductResponse.fromJson(Map<String, dynamic> json) => SearchProductResponse(
        minPrice: json["minPrice"] == null ? null : json["minPrice"].toDouble(),
        productImages: json["productImages"] == null ? null : List<ProductImage>.from(json["productImages"].map((x) => ProductImage.fromJson(x))),
        resources: json["resources"] == null ? null : List<Resource>.from(json["resources"].map((x) => Resource.fromJson(x))),
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "minPrice": minPrice == null ? null : minPrice,
        "productImages": productImages == null ? null : List<dynamic>.from(productImages.map((x) => x.toJson())),
        "resources": resources == null ? null : List<dynamic>.from(resources.map((x) => x.toJson())),
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "code": code,
      };
}
