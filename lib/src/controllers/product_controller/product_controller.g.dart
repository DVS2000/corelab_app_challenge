// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_controller.dart';

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

  late final _$isSearchingAtom =
      Atom(name: 'ProductControllerBase.isSearching', context: context);

  @override
  bool get isSearching {
    _$isSearchingAtom.reportRead();
    return super.isSearching;
  }

  @override
  set isSearching(bool value) {
    _$isSearchingAtom.reportWrite(value, super.isSearching, () {
      super.isSearching = value;
    });
  }

  late final _$txtSearchAtom =
      Atom(name: 'ProductControllerBase.txtSearch', context: context);

  @override
  TextEditingController get txtSearch {
    _$txtSearchAtom.reportRead();
    return super.txtSearch;
  }

  @override
  set txtSearch(TextEditingController value) {
    _$txtSearchAtom.reportWrite(value, super.txtSearch, () {
      super.txtSearch = value;
    });
  }

  late final _$focusTextFieldAtom =
      Atom(name: 'ProductControllerBase.focusTextField', context: context);

  @override
  FocusNode get focusTextField {
    _$focusTextFieldAtom.reportRead();
    return super.focusTextField;
  }

  @override
  set focusTextField(FocusNode value) {
    _$focusTextFieldAtom.reportWrite(value, super.focusTextField, () {
      super.focusTextField = value;
    });
  }

  late final _$txtFiledHasFocusAtom =
      Atom(name: 'ProductControllerBase.txtFiledHasFocus', context: context);

  @override
  bool get txtFiledHasFocus {
    _$txtFiledHasFocusAtom.reportRead();
    return super.txtFiledHasFocus;
  }

  @override
  set txtFiledHasFocus(bool value) {
    _$txtFiledHasFocusAtom.reportWrite(value, super.txtFiledHasFocus, () {
      super.txtFiledHasFocus = value;
    });
  }

  @override
  String toString() {
    return '''
produtcts: ${produtcts},
productsFound: ${productsFound},
searchsRecent: ${searchsRecent},
isSearching: ${isSearching},
txtSearch: ${txtSearch},
focusTextField: ${focusTextField},
txtFiledHasFocus: ${txtFiledHasFocus}
    ''';
  }
}
