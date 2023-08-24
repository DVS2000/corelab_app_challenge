import 'package:corelab_app_challenge/src/entities/product_entity.dart';
import 'package:corelab_app_challenge/src/views/extensions/size_extension.dart';
import 'package:corelab_app_challenge/src/views/utils/consts_utils.dart';
import 'package:flutter/material.dart';

import 'card_product_component.dart';

class ListProductsComponent extends StatefulWidget {
  final List<ProductEntity> products;
  final String title;
  final EdgeInsets paddingTitle;
  final bool isSearch;

  const ListProductsComponent({
    super.key,
    required this.products,
    required this.title,
    required this.paddingTitle,
    this.isSearch = false
  });

  @override
  State<ListProductsComponent> createState() => _ListProductsComponentState();
}

class _ListProductsComponentState extends State<ListProductsComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: widget.paddingTitle,
          child: Text(
            widget.title,
            style: TextStyle(
              color: widget.isSearch ? Colors.black : ConstsUtils.colorCinza06,
              fontSize: context.sizedDevice.height / (widget.isSearch ? 45 : 55),
              fontFamily: ConstsUtils.fontRegular,
              fontWeight: widget.isSearch ? FontWeight.w400 : FontWeight.w500
            ),
          ),
        ),
        Column(
          children: widget.products
            .map(
              (product) => CardProductComponent(product: product)
            )
          .toList(),
        ),
        Container(
          width: double.infinity,
          height: 1,
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(
                width: 1, 
                color: Color(0xffEBF1F4)
              ),
            )
          ),
        ),
      ],
    );
  }
}
