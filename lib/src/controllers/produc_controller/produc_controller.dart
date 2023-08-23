import 'package:corelab_app_challenge/src/entities/product_entity.dart';
import 'package:mobx/mobx.dart';
part 'produc_controller.g.dart';

class ProductController = ProductControllerBase with _$ProductController;

abstract class ProductControllerBase with Store {
  @observable
  List<ProductEntity> produtcts = productsFakes;

  @observable
  List<String> searchsRecent = [];

  void search({required String text}) {
    produtcts = produtcts.where((product) => product.name.contains(text)).toList();
    searchsRecent.add(text);
  }

  removeItensSearchRecent({required int index}) {
    searchsRecent.removeAt(index);
  }
}