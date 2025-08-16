import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:e_commerce/model/item_category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsPriceAndDiscountAndShare extends StatelessWidget {
  final ItemCategoryModel model;
  const DetailsPriceAndDiscountAndShare({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        model.discount == null
            ? SizedBox.shrink() : Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(right: 16.w),
          height: 18.h,
          width: 24.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.r),
            color: AppColor.yellow,
          ),
          child: Text(
            model.discount.toString(),
            style: TextStyleTheme.textStyle10Regular.copyWith(
              color: AppColor.black,
            ),
          ),
        ),
        Text("\$${model.price}", style: TextStyleTheme.textStyle14Bold),
        horizontalSpace(10),
        model.discountPrice == null
            ? SizedBox.shrink() : Text(
          "\$${model.discountPrice}",
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
