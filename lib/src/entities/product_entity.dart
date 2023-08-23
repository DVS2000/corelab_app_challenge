import 'package:corelab_app_challenge/src/views/utils/consts_utils.dart';

class ProductEntity {
  String name;
  String imgSrc;
  double price;
  double? percentDiscount;
  int numberInstallments;
  bool isNew;

  ProductEntity({
    required this.name,
    required this.imgSrc,
    required this.price,
    this.percentDiscount,
    required this.numberInstallments,
    required this.isNew
  });

  double getDiscount() {
    return percentDiscount == null ? 0 : ((percentDiscount ?? 0) / 100) * price; 
  }
}

List<ProductEntity> productsFakes = [
    ProductEntity(
      name: "Condicionador Ácido Fosfórico 37% - AllPrime", 
      imgSrc: ConstsUtils.imgCondicionador,
      price: 3000, 
      percentDiscount: 10,
      numberInstallments: 12, 
      isNew: true
    ),

    ProductEntity(
      name: "Ionômero de Vidro Restaurador Maxxion R - FGM", 
      imgSrc: ConstsUtils.imgProd1,
      price: 83.90, 
      percentDiscount: 26,
      numberInstallments: 6, 
      isNew: true
    ),

    ProductEntity(
      name: "Resina Forma - Ultradent", 
      imgSrc: ConstsUtils.imgProd2,
      price: 148.90, 
      percentDiscount: 22,
      numberInstallments: 12, 
      isNew: true
    ),

    ProductEntity(
      name: "Resina Opallis Flow - FGM", 
      imgSrc: ConstsUtils.imgProd3,
      price: 41.62, 
      percentDiscount: 11,
      numberInstallments: 2, 
      isNew: true
    ),

    ProductEntity(
      name: "Resina Z100™ - 3M", 
      imgSrc: ConstsUtils.imgProd4,
      price: 52.90, 
      percentDiscount: 9,
      numberInstallments: 1, 
      isNew: false
    ),

    ProductEntity(
      name: "Propé Descartável 20G - HNDESC", 
      imgSrc: ConstsUtils.imgProd5,
      price: 12.90, 
      percentDiscount: 15,
      numberInstallments: 1, 
      isNew: false
    ),

    ProductEntity(
      name: "Luva de Procedimento com Pó - Allprime", 
      imgSrc: ConstsUtils.imgProd6,
      price: 17.99, 
      percentDiscount: 1,
      numberInstallments: 1, 
      isNew: false
    ),

    ProductEntity(
      name: "Touca Descartável Branca - Descarpack", 
      imgSrc: ConstsUtils.imgProd7,
      price: 13.90, 
      percentDiscount: 32,
      numberInstallments: 1, 
      isNew: false
    ),

    ProductEntity(
      name: "Rolo Dental - SSPlus", 
      imgSrc: ConstsUtils.imgProd8,
      price: 2.90, 
      percentDiscount: 11,
      numberInstallments: 1, 
      isNew: false
    ),

    ProductEntity(
      name: "Sugador Odontológico Descartável Colorido - AllPrime", 
      imgSrc: ConstsUtils.imgProd9,
      price: 8.90, 
      percentDiscount: 33,
      numberInstallments: 1, 
      isNew: false
    ),

  ];