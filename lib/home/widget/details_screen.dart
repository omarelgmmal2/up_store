import 'package:e_commerce/core/design/app_button.dart';
import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:e_commerce/home/widget/custom_color_list.dart';
import 'package:e_commerce/home/widget/custom_container_variation.dart';
import 'package:e_commerce/home/widget/custom_storage_list.dart';
import 'package:e_commerce/home/widget/details_bottom_nav_bar.dart';
import 'package:e_commerce/home/widget/details_image_container.dart';
import 'package:e_commerce/home/widget/details_price_and_discount_and_share.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: DetailsBottomNavBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 20.h),
        children: [
          DetailsImageContainer(),
          verticalSpace(20),
          DetailsPriceAndDiscountAndShare(),
          verticalSpace(16),
          Text(
            overflow: TextOverflow.ellipsis,
              maxLines: 1,
              "Blue Shoes of Nike",
              style: TextStyleTheme.textStyle16Bold,
          ),
          verticalSpace(9),
          Row(
            children: [
              Text("Status", style: TextStyleTheme.textStyle14Regular),
              horizontalSpace(10),
              Text("In Stock", style: TextStyleTheme.textStyle14Bold),
            ],
          ),
          verticalSpace(16),
          Row(
            children: [
              AppImage(AppImages.bata),
              horizontalSpace(9),
              Text("Bata", style: TextStyleTheme.textStyle14Bold),
              horizontalSpace(9),
              Icon(Iconsax.verify5, color: AppColor.blue, size: 16),
            ],
          ),
          CustomContainerVariation(),
          verticalSpace(5),
          Text(
            "Color",
            style: TextStyleTheme.textStyle20Bold.copyWith(
              color: AppColor.black,
            ),
          ),
          verticalSpace(8),
          CustomColorList(),
          verticalSpace(16),
          Text(
            "Storage",
            style: TextStyleTheme.textStyle20Bold.copyWith(
              color: AppColor.black,
            ),
          ),
          verticalSpace(16),
          CustomStorageList(),
          verticalSpace(24),
          AppButton(
            text: "Checkout",
            textStyle: TextStyleTheme.textStyle16Bold.copyWith(
              color: AppColor.white,
            ),
            onPressed: () {},
          ),
          verticalSpace(24),
          Text(
            "Description",
            style: TextStyleTheme.textStyle20Bold.copyWith(
              color: AppColor.black,
            ),
          ),
          verticalSpace(8),
          ReadMoreText(
              "This is a product description of BATA brand shoes. There are more things that can be added but I’m ",
            trimLines: 2,
            trimMode: TrimMode.Line,
            trimCollapsedText: "Show more",
            trimExpandedText: "Less",
            style: TextStyleTheme.textStyle14Regular,
            moreStyle: TextStyleTheme.textStyle14Bold,
            lessStyle: TextStyleTheme.textStyle14Bold,
          ),
          verticalSpace(30),
        ],
      ),
    );
  }
}
