import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerVariation extends StatelessWidget {
  const CustomContainerVariation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.h),
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      height: 90.h,
      width: 342.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusGeometry.circular(8.r),
        color: Color(0xffD9D9D9).withOpacity(0.32),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                "Variation:",
                style: TextStyleTheme.textStyle20Bold.copyWith(
                  color: AppColor.black,
                ),
              ),
              horizontalSpace(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Price:",
                      style: TextStyleTheme.textStyle14Regular,
                      children: [
                        WidgetSpan(child: horizontalSpace(5)),
                        TextSpan(
                          text: "\$699",
                          style: TextStyleTheme.textStyle14Regular,
                        ),
                        WidgetSpan(child: horizontalSpace(5)),
                        TextSpan(
                          text: "\$599",
                          style: TextStyleTheme.textStyle14Bold,
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Stock:",
                      style: TextStyleTheme.textStyle14Regular,
                      children: [
                        WidgetSpan(child: horizontalSpace(5)),
                        TextSpan(
                          text: "In Stock",
                          style: TextStyleTheme.textStyle14Bold,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          verticalSpace(12),
          Text(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            "This is a product of iPhone 11 with 512 GB",
            style: TextStyleTheme.textStyle14Regular,
          ),
        ],
      ),
    );
  }
}
