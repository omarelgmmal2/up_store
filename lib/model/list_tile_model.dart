import 'package:e_commerce/core/utils/app_images.dart';

class ListTileModel {
  final String title, subTitle, image;

  ListTileModel({
    required this.title,
    required this.subTitle,
    required this.image,
  });
}

final List<ListTileModel> listTileList = [
  ListTileModel(
      title: "My Addresses",
      subTitle: "Set shopping delivery addresses",
      image: AppImages.myHome,
  ),
  ListTileModel(
      title: "My Cart",
      subTitle: "Add, remove products and move to checkout",
      image: AppImages.myCart,
  ),
  ListTileModel(
      title: "My Orders",
      subTitle: "In-progress and Completed Orders",
      image: AppImages.orders,
  ),
];
