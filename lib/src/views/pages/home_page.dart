import 'package:corelab_app_challenge/src/controllers/produc_controller/produc_controller.dart';
import 'package:corelab_app_challenge/src/entities/menu_entity.dart';
import 'package:corelab_app_challenge/src/views/components/list_products_componet.dart';
import 'package:corelab_app_challenge/src/views/components/menu_item_component.dart';
import 'package:corelab_app_challenge/src/views/components/not_found_component.dart';
import 'package:corelab_app_challenge/src/views/components/search_component.dart';
import 'package:corelab_app_challenge/src/views/extensions/size_extension.dart';
import 'package:corelab_app_challenge/src/views/utils/consts_utils.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int indexMenu = 0;

  final productController = GetIt.I.get<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.sizedDevice.height,
        width: context.sizedDevice.width,
        child: Column(
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
            Observer(
              builder: (context) {
                return Expanded(
                  child: productController.isSearching
                  ? productController.productsFound.isEmpty
                    ? NotFoundComponent(text: productController.txtSearch.text.trim())
                    : ListView(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      children: [
                        ListProductsComponent(
                          products: productController.productsFound
                          .toList(), 
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
                          .where(
                            (product) => productController.produtcts.indexOf(product).isEven
                          )
                        .toList(), 
                        title: "Hoje", 
                        paddingTitle: const EdgeInsets.only(left: 20, bottom: 20)
                      ),
            
                      ListProductsComponent(
                        products: productController.produtcts
                          .where(
                            (product) => productController.produtcts.indexOf(product).isOdd
                          )
                        .toList(), 
                        title: "Ontem", 
                        paddingTitle: const EdgeInsets.only(left: 20, bottom: 10, top: 10)
                      )
                    ],
                  ),
                );
              }
            )

          ],
        ),
      ),

      // FOOTER - MENU
      bottomNavigationBar: Container(
        height: context.sizedDevice.height / 10,
        width: context.sizedDevice.width,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(148, 166, 169, 0.15),
              blurRadius: 24,
              offset: Offset(0, -2)
            )
          ]
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: menuItems.map(
            (item) => MenuIemComponent(
              item: item, 
              isSelected: indexMenu == menuItems.indexOf(item),
              onTap: () => setState(() => indexMenu = menuItems.indexOf(item)),
            )
          ).toList(),
        ),
      ),
    );
  }
}