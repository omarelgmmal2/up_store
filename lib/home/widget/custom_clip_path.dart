import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/design/clip_path_main_page.dart';
import 'package:e_commerce/core/logic/helper_methods.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/app_strings.dart';
import 'package:e_commerce/core/utils/font_weight_helper.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:e_commerce/home/screens/cart_screen.dart';
import 'package:e_commerce/home/screens/sub_categories_screen.dart';
import 'package:e_commerce/home/widget/circular_container.dart';
import 'package:e_commerce/model/popular_categories_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomClipPath extends StatelessWidget {
  const CustomClipPath({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ClipPathMainPage(),
      child: Container(
        height: 300.h,
        width: double.infinity,
        decoration: BoxDecoration(color: AppColor.primary),
        child: Stack(
          children: [
            Positioned(top: -150.h, right: -160.w, child: CircularContainer()),
            Positioned(top: 50.h, right: -200.w, child: CircularContainer()),
            Positioned(
              top: 20.h,
              left: 36.w,
              child: Text(
                AppStrings.goodMorning,
                style: Theme.of(context,).textTheme.labelMedium!.apply(color: AppColor.white),
              ),
            ),
            Positioned(
              top: 40.h,
              left: 36.w,
              child: Text(
                "Omar Elgmmal",
                style: TextStyleTheme.textStyle14Medium.copyWith(
                  color: AppColor.white,
                ),
              ),
            ),
            Positioned(
              top: 20.h,
              right: 36.w,
              child: Badge(
                backgroundColor: AppColor.white,
                offset: Offset(-5, 5),
                label: Text(
                  "0",
                  style: TextStyleTheme.textStyle10Regular.copyWith(
                    color: AppColor.black,
                    fontWeight: FontWeightHelper.extraBold,
                  ),
                ),
                child: IconButton(
                  icon: AppImage(AppImages.cart, color: AppColor.white),
                  onPressed: () {
                    navigateTo(toPage: CartScreen());
                  },
                ),
              ),
            ),
            Positioned(
              top: 90.h,
              left: 36.w,
              child: Text(
                "Popular Categories",
                style: TextStyleTheme.textStyle14Medium.copyWith(
                  color: AppColor.white,
                  fontWeight: FontWeightHelper.bold,
                ),
              ),
            ),
            ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 36.w),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => horizontalSpace(16),
              itemBuilder: (context, index) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      navigateTo(
                          toPage: SubCategoriesScreen(
                            model: popularCategoriesList[index],
                          ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20.h, bottom: 10.h),
                      height: 56.h,
                      width: 56.h,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        shape: BoxShape.circle,
                      ),
                      child: AppImage(
                        popularCategoriesList[index].image,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                  Text(
                    popularCategoriesList[index].text,
                    style: Theme.of(context,).textTheme.labelMedium!.apply(color: AppColor.white),
                  ),
                ],
              ),
              itemCount: popularCategoriesList.length,
            ),
          ],
        ),
      ),
    );
  }
}
