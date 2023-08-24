import 'package:corelab_app_challenge/src/controllers/product_controller/product_controller.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.I;

    getIt.registerSingleton(ProductController());
  }
}