import 'package:corelab_app_challenge/src/views/utils/consts_utils.dart';

class MenuEntity {
  String title;
  String icon;
  String iconOn;

  MenuEntity({ required this.title, required this.icon, required this.iconOn });
}

List<MenuEntity> menuItems = [
    MenuEntity(
      title: "Home", 
      icon: ConstsUtils.iconHome,
      iconOn: ConstsUtils.iconHomeOn
    ),
    MenuEntity(
      title: "Categorias", 
      icon: ConstsUtils.iconCategory,
      iconOn: ConstsUtils.iconCategoryOn
    ),
    MenuEntity(
      title: "Adicionar", 
      icon: ConstsUtils.iconAdd,
      iconOn: ConstsUtils.iconAdd
    ),
    MenuEntity(
      title: "Favoritos", 
      icon: ConstsUtils.iconFavorite,
      iconOn: ConstsUtils.iconFavorite
    ),
    MenuEntity(
      title: "Conta", 
      icon: ConstsUtils.iconUser,
      iconOn: ConstsUtils.iconUser
    ),

  ];