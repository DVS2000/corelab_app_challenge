import 'package:corelab_app_challenge/src/controllers/product_controller/product_controller.dart';
import 'package:corelab_app_challenge/src/views/components/list_products_componet.dart';
import 'package:corelab_app_challenge/src/views/components/not_found_component.dart';
import 'package:corelab_app_challenge/src/views/components/search_component.dart';
import 'package:corelab_app_challenge/src/views/components/search_recent_component.dart';
import 'package:corelab_app_challenge/src/views/extensions/size_extension.dart';
import 'package:corelab_app_challenge/src/views/utils/consts_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final productController = GetIt.I.get<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // HEADER - SEARCH
        Container(
          width: double.infinity,
          height: context.sizedDevice.height / 6,
          color: ConstsUtils.colorPrimary,
          padding: EdgeInsets.only(
            top: context.sizedDevice.height / 10,
            left: 10,
            right: 10,
            bottom: 10
          ),
          child: const SearchComponent()
        ),

        // BODY
        Observer(builder: (context) {
          return Expanded(
            child: productController.txtFiledHasFocus 
            ? const SearchRecentComponent()
            : productController.isSearching
              ? productController.productsFound.isEmpty
                ? NotFoundComponent(
                    text: productController.txtSearch.text.trim()
                  )
                : ListView(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    children: [
                      ListProductsComponent(
                        products: productController.productsFound.toList(),
                        title: "${productController.productsFound.length} resultados encontrados",
                        paddingTitle: const EdgeInsets.only(left: 20, bottom: 20),
                        isSearch: true,
                      ),
                    ],
                  )
                : ListView(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 20),
                        child: Text(
                          "Últimos anúncios",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: context.sizedDevice.height / 40,
                            fontFamily: ConstsUtils.fontRegular,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),

                      ListProductsComponent(
                        products: productController.produtcts
                          .where((product) => productController.produtcts
                            .indexOf(product)
                            .isEven
                          )
                          .toList(),
                        title: "Hoje",
                        paddingTitle: const EdgeInsets.only(left: 20, bottom: 20)
                      ),

                      ListProductsComponent(
                        products: productController.produtcts
                          .where((product) => productController.produtcts
                            .indexOf(product)
                            .isOdd
                          )
                        .toList(),
                        title: "Ontem",
                        paddingTitle: const EdgeInsets.only(left: 20, bottom: 10, top: 10)
                      )
                    ],
                  ),
          );
        })
      ],
    );
  }
}
