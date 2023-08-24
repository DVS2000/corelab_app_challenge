import 'package:corelab_app_challenge/src/entities/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'produc_controller.g.dart';

class ProductController = ProductControllerBase with _$ProductController;

abstract class ProductControllerBase with Store {
  @observable
  List<ProductEntity> produtcts = productsFakes;
  
  @observable 
  List<ProductEntity> productsFound = [];

  @observable
  List<String> searchsRecent = [];

  @observable
  bool isSearching = false;

  TextEditingController txtSearch = TextEditingController();

  void search() {
    if (txtSearch.text.trim().isNotEmpty) {
      isSearching = true;
      productsFound = produtcts
        .where(
          (product) => product.name.toLowerCase().contains(txtSearch.text.trim().toLowerCase())
        )
        .toList();
      searchsRecent.add(txtSearch.text.trim());
    }
  }

  void cleanProductsFound() {
    isSearching = false;
    txtSearch.clear();
    productsFound = [];
  }

  removeItensSearchRecent({required int index}) {
    searchsRecent.removeAt(index);
  }
}