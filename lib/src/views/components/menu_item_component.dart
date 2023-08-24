import 'package:corelab_app_challenge/src/entities/menu_entity.dart';
import 'package:corelab_app_challenge/src/views/extensions/size_extension.dart';
import 'package:corelab_app_challenge/src/views/utils/consts_utils.dart';
import 'package:flutter/material.dart';

class MenuIemComponent extends StatelessWidget {
  final MenuEntity item;
  final void Function()? onTap;
  final bool isSelected;
  
  const MenuIemComponent({
    super.key, 
    required this.item, 
    this.onTap, 
    required this.isSelected
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              isSelected ? item.iconOn : item.icon,
              height: context.sizedDevice.height / 20,
            ),
            Text(
              item.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isSelected
                  ? ConstsUtils.colorPrimary
                  : ConstsUtils.colorCinza06,
                fontSize: context.sizedDevice.height / 68,
                fontFamily: ConstsUtils.fontMedium,
                fontWeight: FontWeight.w100
              ),
            )
          ],
        ),
      ),
    );
  }
}
