import 'package:corelab_app_challenge/src/controllers/product_controller/product_controller.dart';
import 'package:corelab_app_challenge/src/entities/menu_entity.dart';
import 'package:corelab_app_challenge/src/views/components/menu_item_component.dart';
import 'package:corelab_app_challenge/src/views/extensions/size_extension.dart';
import 'package:corelab_app_challenge/src/views/pages/tabs/category_page.dart';
import 'package:corelab_app_challenge/src/views/pages/tabs/home_tab.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

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
        child: indexMenu == 0 ? const HomeTab() : CategoryTab()
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