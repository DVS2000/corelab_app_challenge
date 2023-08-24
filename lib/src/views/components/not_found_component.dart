import 'package:corelab_app_challenge/src/views/extensions/size_extension.dart';
import 'package:corelab_app_challenge/src/views/utils/consts_utils.dart';
import 'package:flutter/material.dart';

class NotFoundComponent extends StatelessWidget {
  final String text;
  const NotFoundComponent({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            ConstsUtils.imgSearch,
            height: context.sizedDevice.height / 5,
          ),
        ),
        
        const SizedBox(height: 10),
        Center(
          child: Text(
            "Resultado não encontrado",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: ConstsUtils.fontSemiBold,
              fontSize: context.sizedDevice.height / 45,
              fontWeight: FontWeight.w500
            ),
          ),
        ),

        const SizedBox(height: 10),
        Center(
          child: Text(
            "Não encontramos nenhum resultado\nparecido com \"$text\".",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: ConstsUtils.fontRegular,
              fontSize: context.sizedDevice.height / 50,
              fontWeight: FontWeight.w500
            ),
          ),
        )
      ],
    );
  }
}
