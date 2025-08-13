import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/app_strings.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:e_commerce/home/widget/custom_search_delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchContainer extends StatelessWidget {
  const CustomSearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showSearch(
          context: context,
          delegate: CustomSearchDelegate(),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 36.w),
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        height: 46.h,
        width: 318.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColor.white,
          boxShadow: [
            BoxShadow(
              color: Color(0xff000000).withOpacity(0.10),
              offset: Offset(0, 4),
              spreadRadius: 0,
              blurRadius: 4,
            ),
          ],
          border: Border.all(
            color: AppColor.white,
          ),
        ),
        child: Row(
          children: [
            AppImage(
              AppImages.search,
              color: AppColor.grey,
            ),
            horizontalSpace(16),
            Text(
              AppStrings.searchInStore,
              style: TextStyleTheme.textStyle14Medium.copyWith(
                color: AppColor.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
