import 'package:marketlab_app/models/category.dart';
import 'package:marketlab_app/models/homeslider.dart';
import 'package:marketlab_app/models/market.dart';
import 'package:marketlab_app/models/product.dart';

class StaticData {
  static List<Category> categoryList = [
    Category(id: 1, name: "Atıştımalık"),
    Category(id: 1, name: "İçecek"),
    Category(id: 1, name: "Kahvaltılık"),
    Category(id: 1, name: "Temizlik"),
    Category(id: 1, name: "Kozmetik"),
    Category(id: 1, name: "Bebek"),
    Category(id: 1, name: "Oyuncak"),
    Category(id: 1, name: "Ev,Pet"),
    Category(id: 1, name: "Gıda,Şekerleme"),
  ];

  static List<HomeSlider> homeSliderList = [
    HomeSlider(
        id: 1,
        title: "Pastavilla Kuskus Makarna 500 G Pastavilla Kuskus Makarna"),
    HomeSlider(id: 1, title: "Arbella Tel Şehriye 500 G"),
    HomeSlider(id: 1, title: "Billur Tuz İyotlu Sofra Tuzu 500 G ( Tuzluklu )"),
    HomeSlider(id: 1, title: "Arifoğlu Garam Masala Baharat 45 G"),
    HomeSlider(
        id: 1, title: "Purelife Himalaya Baharat Çeşnili Tuz Değ. 105 G"),
    HomeSlider(id: 1, title: "Bağdat Garam Masala Dünya Lezzetleri 60 G"),
    HomeSlider(id: 1, title: "Bağdat Akdeniz Çeşnisi"),
    HomeSlider(id: 1, title: "Body Pure Erkek Likralı Boxer Gri S"),
    HomeSlider(id: 1, title: "Chirpy Bella Krem Kadın Terlik 38-39"),
  ];

  Future<List<Product>> search(String search) async {
    await Future.delayed(Duration(seconds: 2));
    return List.generate(search.length, (int index) {
      return Product(id: 1, name: "Product Title", price: 15.0);
    });
  }

  static Future<List<Market>> fetchMarketsByProductId() async {
    await Future.delayed(Duration(seconds: 2));
    return List.generate(5, (int index) {
      return Market(
          id: 1,
          name: "Migros",
          imageUrl:
              "https://logos-download.com/wp-content/uploads/2016/09/Migros_logo.png",
          price: 29.90);
    });
  }
}
