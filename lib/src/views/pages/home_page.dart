import 'package:corelab_app_challenge/src/entities/menu_entity.dart';
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
            (item) => Expanded(
              child: GestureDetector(
                onTap: () => setState(() => indexMenu = menuItems.indexOf(item)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      indexMenu == menuItems.indexOf(item) ? item.iconOn : item.icon,
                      height: context.sizedDevice.height / 20,
                    ),
                    Text(
                      item.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: indexMenu == menuItems.indexOf(item) ? ConstsUtils.colorPrimary : ConstsUtils.colorCinza06,
                        fontSize: context.sizedDevice.height / 68,
                        fontFamily: ConstsUtils.fontMedium,
                        fontWeight: FontWeight.w100
                      ),
                    )
                  ],
                ),
              ),
            )
          ).toList(),
        ),
      ),
    );
  }
}