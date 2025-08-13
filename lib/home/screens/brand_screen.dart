import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/design/custom_app_bar.dart';
import 'package:e_commerce/core/logic/helper_methods.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:e_commerce/home/widget/brand_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class BrandScreen extends StatelessWidget {
  const BrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: true,
        title: Text(
          "Brand",
          style: TextStyleTheme.textStyle20Bold.copyWith(color: AppColor.black),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
        children: [
          Text("Brands", style: TextStyleTheme.textStyle16Bold),
          verticalSpace(18),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10,
              crossAxisCount: 2,
              mainAxisExtent: 80,
              mainAxisSpacing: 16,
            ),
            itemCount: 16,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                navigateTo(toPage: BrandProducts());
              },
              child: Container(
                height: 60.h,
                width: 166.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: AppColor.grey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppImage(AppImages.bata),
                    horizontalSpace(16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text("Bata", style: TextStyleTheme.textStyle14Bold),
                            horizontalSpace(5),
                            Icon(Iconsax.verify5, size: 16, color: AppColor.blue),
                          ],
                        ),
                        Text(
                          "172 products",
                          style: TextStyleTheme.textStyle10Bold.copyWith(
                            color: AppColor.darkGrey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
