import 'package:get_it/get_it.dart';
import 'package:marketlab_app/app_settings.dart';
import 'package:marketlab_app/src/data/repositories/home_slider_repository.dart';
import 'package:marketlab_app/src/data/repositories/product_repository.dart';

GetIt serviceProvider = GetIt.instance;

void setupLocator() {
  serviceProvider.registerLazySingleton(() => AppSettings);
  serviceProvider.registerLazySingleton(() => HomeSliderRepository());
  serviceProvider.registerLazySingleton(() => ProductRepository());
}
