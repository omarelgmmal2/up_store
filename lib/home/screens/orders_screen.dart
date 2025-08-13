import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/design/custom_app_bar.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: true,
        title: Text(
          "My Orders",
          style: TextStyleTheme.textStyle20Bold.copyWith(color: AppColor.black),
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
        itemBuilder: (context, index) => Container(
          padding: EdgeInsets.all(16.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: Color(0xffF3F3F3),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  AppImage(AppImages.ship),
                  horizontalSpace(16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Processing",
                        style: TextStyleTheme.textStyle14Bold.copyWith(
                          color: AppColor.primary,
                        ),
                      ),
                      Text(
                        "01 Jan 2025",
                        style: TextStyleTheme.textStyle14Bold,
                      ),
                    ],
                  ),
                ],
              ),
              verticalSpace(16),
              Row(
                children: [
                  AppImage(AppImages.tag),
                  horizontalSpace(16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Order",
                        style: TextStyleTheme.textStyle14Bold.copyWith(
                          color: AppColor.darkGrey,
                        ),
                      ),
                      Text("GYS324", style: TextStyleTheme.textStyle14Bold),
                    ],
                  ),
                  Spacer(),
                  AppImage(AppImages.date),
                  horizontalSpace(16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "GYS324",
                        style: TextStyleTheme.textStyle14Bold.copyWith(
                          color: AppColor.darkGrey,
                        ),
                      ),
                      Text(
                        "06 Jan 2025",
                        style: TextStyleTheme.textStyle14Bold,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        separatorBuilder: (context, index) => verticalSpace(16),
        itemCount: 5,
      ),
    );
  }
}
