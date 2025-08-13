import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/app_strings.dart';

class OnBoardingModel {
  final String image, title, subTitle;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

final List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      image: AppImages.onBoardingLottie1,
      title: AppStrings.onBoardingTitle1,
      subTitle: AppStrings.onBoardingSubTitle1,
  ),
  OnBoardingModel(
      image: AppImages.onBoardingLottie2,
      title: AppStrings.onBoardingTitle2,
      subTitle: AppStrings.onBoardingSubTitle2,
  ),
  OnBoardingModel(
      image: AppImages.onBoardingLottie3,
      title: AppStrings.onBoardingTitle3,
      subTitle: AppStrings.onBoardingSubTitle3,
  ),
];
