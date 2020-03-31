import 'package:marketlab_app/src/domain/listing.dart';
import 'package:marketlab_app/src/domain/product.dart';
import 'package:marketlab_app/src/domain/product_image.dart';
import 'package:marketlab_app/src/domain/resource.dart';

class FeaturedProductListingResponse extends Product {
  FeaturedProductListingResponse({
    int id,
    String name,
    String code,
    this.listing,
    this.resource,
    this.productImage,
  }) : super(id: id, name: name, code: code);
  Listing listing;
  Resource resource;
  ProductImage productImage;

  factory FeaturedProductListingResponse.fromJson(Map<String, dynamic> json) => FeaturedProductListingResponse(
        listing: json["listing"] == null ? null : Listing.fromJson(json["listing"]),
        resource: json["resource"] == null ? null : Resource.fromJson(json["resource"]),
        productImage: json["productImage"] == null ? null : ProductImage.fromJson(json["productImage"]),
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "listing": listing == null ? null : listing.toJson(),
        "resource": resource == null ? null : resource.toJson(),
        "productImage": productImage == null ? null : productImage.toJson(),
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "code": code,
      };
}
