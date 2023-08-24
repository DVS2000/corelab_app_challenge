import 'package:corelab_app_challenge/src/views/extensions/size_extension.dart';
import 'package:corelab_app_challenge/src/views/utils/consts_utils.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  CategoryTab({super.key});

  final List<String> categories = [
    "Anestésicos e Agulhas Gengival",
    "Biossegurança",
    "Descartáveis",
    "Dentística e Estética",
    "Ortodontia",
    "Endodontia",
    "Periféricos e Peças de Mão",
    "Moldagem",
    "Prótese",
    "Cimentos",
    "Instrumentos",
    "Cirurgia e Periodontia",
    "Radiologia"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         // HEADER - SEARCH
        Container(
          width: double.infinity,
          height: context.sizedDevice.height / 6,
          color: const Color(0xffF7F9FA),
          padding: EdgeInsets.only(
            top: context.sizedDevice.height / 9,
            left: 20,
            right: 10,
            bottom: 10
          ),
          child: Text(
            "Categorias",
            style: TextStyle(
              fontFamily: ConstsUtils.fontSemiBold,    
              fontSize: context.sizedDevice.height / 33
            ),
          )
        ),

        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(width: 1, color: Color(0xffEBF1F4)),
                bottom: BorderSide(width: 1, color: Color(0xffEBF1F4))
              )
            ),
            child: ListView(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              children: categories.map(
                (category) => Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: categories.indexOf(category) == categories.indexOf(categories.last)
                    ? null
                    : const Border(
                      bottom: BorderSide(
                        color: Color(0xffEBF1F4),
                        width: 1
                      )
                    )
                  ),
                  child: Text(
                    category,
                    style: TextStyle(
                      fontFamily: ConstsUtils.fontMedium,
                      fontSize: context.sizedDevice.height / 45,
                      fontWeight: FontWeight.w500,
                      color: ConstsUtils.colorPrimary
                    ),
                  ),
                )
              ).toList(),
            ),
          ),
        )
      ],
    );
  }
}