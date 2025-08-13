import 'package:e_commerce/core/utils/app_images.dart';

class ItemCategoryModel {
  final String text;
  final String image;
  final String marka;
  final int? discount;
  final double price;
  final double? discountPrice;

  ItemCategoryModel({
    required this.text,
    required this.image,
    required this.marka,
    this.discount,
    required this.price,
    this.discountPrice,
  });
}

final List<ItemCategoryModel> itemCategoryList = [
  ItemCategoryModel(
      text: "iPhone 11 64GB",
      image: AppImages.iphone,
      marka: "Apple",
      discount: 49,
      price: 399,
      discountPrice: 599,
  ),
  ItemCategoryModel(
      text: "Shoes of Nike",
      image: AppImages.shoes,
      marka: "Nike",
      discount: 9,
      price: 300,
      discountPrice: 600,
  ),
  ItemCategoryModel(
      text: "Blue INDURE Shoes",
      image: AppImages.indureShoes,
      marka: "INDURE",
      discount: 50,
      price: 199,
      discountPrice: 299,
  ),
  ItemCategoryModel(
      text: "Blue Bata Shoes",
      image: AppImages.shoes,
      marka: "Bata",
      price: 699,
  ),
  ItemCategoryModel(
      text: "Bink Bata shirt",
      image: AppImages.shirt,
      marka: "Bata",
      price: 500,
  ),
  ItemCategoryModel(
      text: "Red Bata jaket",
      image: AppImages.jaket,
      marka: "Bata",
      price: 500,
  ),
  ItemCategoryModel(
      text: "blue Bata jaket",
      image: AppImages.blueJaket,
      marka: "Bata",
      price: 550,
  ),
];
