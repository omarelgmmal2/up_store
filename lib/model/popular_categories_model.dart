import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/app_strings.dart';

class PopularCategoriesModel {
  final String image, text;

  PopularCategoriesModel({required this.image, required this.text});
}


final List<PopularCategoriesModel> popularCategoriesList = [
  PopularCategoriesModel(
      image: AppImages.running,
      text: AppStrings.sports,
  ),
  PopularCategoriesModel(
      image: AppImages.sofa,
      text: AppStrings.furniture,
  ),
  PopularCategoriesModel(
      image: AppImages.cpu,
      text: AppStrings.electronics,
  ),
  PopularCategoriesModel(
      image: AppImages.clothesHanger,
      text: AppStrings.clothes,
  ),
  PopularCategoriesModel(
      image: AppImages.sportsShoes,
      text: AppStrings.shoes,
  ),
];
