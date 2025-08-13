import 'package:e_commerce/core/utils/app_images.dart';

class BannerModel {
  final String image;

  BannerModel({required this.image});
}

final List<BannerModel> bannerList = [
  BannerModel(image: AppImages.banner1),
  BannerModel(image: AppImages.banner2),
  BannerModel(image: AppImages.banner3),
  BannerModel(image: AppImages.banner4),
  BannerModel(image: AppImages.banner5),
  BannerModel(image: AppImages.banner6),
];