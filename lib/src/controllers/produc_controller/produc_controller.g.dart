// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produc_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProductController on ProductControllerBase, Store {
  late final _$produtctsAtom =
      Atom(name: 'ProductControllerBase.produtcts', context: context);

  @override
  List<ProductEntity> get produtcts {
    _$produtctsAtom.reportRead();
    return super.produtcts;
  }

  @override
  set produtcts(List<ProductEntity> value) {
    _$produtctsAtom.reportWrite(value, super.produtcts, () {
      super.produtcts = value;
    });
  }

  late final _$productsFoundAtom =
      Atom(name: 'ProductControllerBase.productsFound', context: context);

  @override
  List<ProductEntity> get productsFound {
    _$productsFoundAtom.reportRead();
    return super.productsFound;
  }

  @override
  set productsFound(List<ProductEntity> value) {
    _$productsFoundAtom.reportWrite(value, super.productsFound, () {
      super.productsFound = value;
    });
  }

  late final _$searchsRecentAtom =
      Atom(name: 'ProductControllerBase.searchsRecent', context: context);

  @override
  List<String> get searchsRecent {
    _$searchsRecentAtom.reportRead();
    return super.searchsRecent;
  }

  @override
  set searchsRecent(List<String> value) {
    _$searchsRecentAtom.reportWrite(value, super.searchsRecent, () {
      super.searchsRecent = value;
    });
  }

  @override
  String toString() {
    return '''
produtcts: ${produtcts},
productsFound: ${productsFound},
searchsRecent: ${searchsRecent}
    ''';
  }
}
