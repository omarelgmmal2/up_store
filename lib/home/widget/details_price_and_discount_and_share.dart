import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsPriceAndDiscountAndShare extends StatelessWidget {
  const DetailsPriceAndDiscountAndShare({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(right: 16.w),
          height: 18.h,
          width: 24.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.r),
            color: AppColor.yellow,
          ),
          child: Text(
            "50%",
            style: TextStyleTheme.textStyle10Regular.copyWith(
              color: AppColor.black,
            ),
          ),
        ),
        Text("\$399", style: TextStyleTheme.textStyle14Bold),
        horizontalSpace(10),
        Text(
          "\$599",
          style: TextStyleTheme.textStyle14Bold.copyWith(
            decoration: TextDecoration.lineThrough,
          ),
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.share_rounded, color: AppColor.black),
        ),
      ],
    );
  }
}
