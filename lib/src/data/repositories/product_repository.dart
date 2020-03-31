import 'dart:convert';
import 'package:marketlab_app/src/blocs/products/featured_products/dto/featured_product_response.dart';
import 'package:http/http.dart' as http;
import 'package:marketlab_app/src/blocs/products/search_products/dto/search_product_response.dart';
import 'package:marketlab_app/src/constants/api_url.dart';

class ProductRepository {
  Future<List<FeaturedProductListingResponse>> getFeaturedProducts() async {
    final http.Client httpClient = http.Client();
    final response = await httpClient.get(API_URL.FEATURED_PRODUCT_LISTINGS);

    final List<FeaturedProductListingResponse> _productListings = [];
    var items = jsonDecode(response.body)["data"];

    if (items != null) {
      for (Map item in items) {
        _productListings.add(FeaturedProductListingResponse.fromJson(item));
      }
    }

    return _productListings;
  }

  Future<List<SearchProductResponse>> getSearchedProducts(String keyword) async {
    final http.Client httpClient = http.Client();
    final response = await httpClient.get("${API_URL.PRODUCTS_SEARCH}/$keyword");

    final List<SearchProductResponse> _searchProducts = [];
    var items = jsonDecode(response.body)["data"]["products"];

    if (items != null) {
      for (Map item in items) {
        _searchProducts.add(SearchProductResponse.fromJson(item));
      }
    }

    return _searchProducts;
  }
}
