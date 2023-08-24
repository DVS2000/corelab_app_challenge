import 'package:corelab_app_challenge/src/entities/menu_entity.dart';
import 'package:corelab_app_challenge/src/views/components/menu_item_component.dart';
import 'package:corelab_app_challenge/src/views/components/search_component.dart';
import 'package:corelab_app_challenge/src/views/extensions/size_extension.dart';
import 'package:corelab_app_challenge/src/views/utils/consts_utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int indexMenu = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.sizedDevice.height,
        width: context.sizedDevice.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: context.sizedDevice.height / 7,
              color: ConstsUtils.colorPrimary,
              padding: EdgeInsets.only(
                top: context.sizedDevice.height / 15,
                left: 10,
                right: 10,
                bottom: 10
              ),
              child: const SearchComponent()
            )
          ],
        ),
      ),
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