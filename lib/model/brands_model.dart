import 'package:e_commerce/core/utils/app_images.dart';

class BrandsModel {
  final String image, text, textProduct;

  BrandsModel({
    required this.image,
    required this.text,
    required this.textProduct,
  });
}

final List<BrandsModel> brandsList = [
  BrandsModel(
      image: AppImages.bata,
      text: "Bata",
      textProduct: "172 products",
  ),
  BrandsModel(
      image: AppImages.nike,
      text: "Nike",
      textProduct: "170 products",
  ),
  BrandsModel(
      image: AppImages.nike,
      text: "Nike",
      textProduct: "185 products",
  ),
  BrandsModel(
      image: AppImages.bata,
      text: "Bata",
      textProduct: "165 products",
  ),
];
