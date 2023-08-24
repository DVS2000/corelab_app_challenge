import 'package:corelab_app_challenge/src/controllers/product_controller/product_controller.dart';
import 'package:corelab_app_challenge/src/views/extensions/size_extension.dart';
import 'package:corelab_app_challenge/src/views/utils/consts_utils.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class SearchRecentComponent extends StatelessWidget {
  const SearchRecentComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final productController = GetIt.I.get<ProductController>();

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 20),
          child: Text(
            "Pesquisas recentes",
            style: TextStyle(
              color: Colors.black ,
              fontSize: context.sizedDevice.height / 45,
              fontFamily: ConstsUtils.fontRegular,
              fontWeight: FontWeight.w400
            ),
          ),
        ),
        Column(
          children: productController.searchsRecent.map(
            (search) => Padding(
              padding: const EdgeInsets.only(
                left: 20,
                bottom: 10
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.history,
                    color: ConstsUtils.colorCinza06,
                  ),
            
                  const SizedBox(width: 10,),
            
                  Text(
                    search,
                    style: TextStyle(
                      fontFamily: ConstsUtils.fontRegular,
                      color: ConstsUtils.colorCinza06,
                      fontWeight: FontWeight.w400,
                      fontSize: context.sizedDevice.height / 45
                    ),
                  )
                ],
              ),
            )
          ).toList(),
        ),
      ],
    );
  }
}