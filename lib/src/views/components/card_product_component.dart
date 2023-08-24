import 'package:corelab_app_challenge/src/entities/product_entity.dart';
import 'package:corelab_app_challenge/src/views/extensions/size_extension.dart';
import 'package:corelab_app_challenge/src/views/utils/consts_utils.dart';
import 'package:flutter/material.dart';

class CardProductComponent extends StatelessWidget {
  final ProductEntity product;
  const CardProductComponent({super.key, required this.product,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(width: 1, color: Color(0xffEBF1F4)),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            product.imgSrc,
            height: context.sizedDevice.height / 6,
          ),
          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                product.percentDiscount == 1 
                ? const SizedBox()
                : Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      width: context.sizedDevice.width / 7,
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                      decoration: BoxDecoration(
                        color: ConstsUtils.colorPrimary,
                        borderRadius: BorderRadius.circular(4)
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "${product.percentDiscount?.toInt() ?? 0}% OFF",
                        style: TextStyle(
                          fontFamily: ConstsUtils.fontRegular,
                          fontSize: context.sizedDevice.height / 75,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  product.name,
                  style: TextStyle(
                    fontFamily: ConstsUtils.fontRegular,
                    fontSize: context.sizedDevice.height / 50,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                product.percentDiscount == 1 
                ? const SizedBox()
                : Text(
                  "R\$${product.price}".replaceAll(".", ","),
                  style: TextStyle(
                      fontFamily: ConstsUtils.fontRegular,
                      fontSize: context.sizedDevice.height / 50,
                      fontWeight: FontWeight.w500,
                      color: ConstsUtils.colorCinza06,
                      decoration: TextDecoration.lineThrough
                    ),
                ),
                Text(
                  product.percentDiscount == 1 ? "R\$${product.price}".replaceAll(".", ",") : "R\$${product.getDiscount()}".replaceAll(".", ","),
                  style: TextStyle(
                      fontFamily: ConstsUtils.fontRegular,
                      fontSize: context.sizedDevice.height / 40,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff002429)),
                ),
                Text(
                  product.numberInstallments <= 1 ? "Sem parcelas" : "Em até ${product.numberInstallments}x de R\$${product.price}".replaceAll(".", ","),
                  style: TextStyle(
                      fontFamily: ConstsUtils.fontRegular,
                      fontSize: context.sizedDevice.height / 60,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff00B4CC)),
                ),
                const SizedBox(
                  height: 5,
                ),
                product.isNew
                ? Text(
                  "NOVO",
                  style: TextStyle(
                      fontFamily: ConstsUtils.fontRegular,
                      fontSize: context.sizedDevice.height / 55,
                      fontWeight: FontWeight.w500,
                      color: ConstsUtils.colorCinza06),
                )
                : const SizedBox(),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
