import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/design/custom_app_bar.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:e_commerce/home/widget/item_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: true,
        title: Text(
          "Bata",
          style: TextStyleTheme.textStyle20Bold.copyWith(color: AppColor.black),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 16.w,
              right: 16.w,
              top: 24.h,
              bottom: 62.h,
            ),
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            height: 60.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: AppColor.grey),
            ),
            child: Row(
              children: [
                AppImage(AppImages.bata),
                horizontalSpace(5),
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                prefixIcon: AppImage(AppImages.filter),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(color: Color(0xffD9D9D9)),
                ),
              ),
              items: ["Name", "Lower Price", "Higher Price", "Sale", "Newest"]
                  .map((filter) {
                    return DropdownMenuItem(value: filter, child: Text(filter));
                  })
                  .toList(),
              onChanged: (value) {},
            ),
          ),
          ItemCategory(),
        ],
      ),
    );
  }
}
