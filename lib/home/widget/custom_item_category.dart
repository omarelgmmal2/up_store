import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:e_commerce/model/item_category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class CustomItemCategory extends StatefulWidget {
  final ItemCategoryModel model;
  const CustomItemCategory({super.key, required this.model});

  @override
  State<CustomItemCategory> createState() => _CustomItemCategoryState();
}

class _CustomItemCategoryState extends State<CustomItemCategory> {

  bool isLike = false;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 212.h,
      width: 145.w,
      decoration: BoxDecoration(
        color: Color(0xff0857A0).withOpacity(0.10),
        borderRadius: BorderRadiusGeometry.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 5.w,
              right: 5.w,
              top: 7.h,
              bottom: 20.h,
            ),
            height: 125.h,
            width: 160.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusGeometry.circular(16.r),
              color: AppColor.white,
            ),
            child: Stack(
              children: [
                Center(
                  child: AppImage(
                    widget.model.image,
                    fit: BoxFit.contain,
                    height: 100.h,
                    width: 97.w,
                  ),
                ),
                widget.model.discount == null
                    ? SizedBox.shrink()
                    : Positioned(
                  top: 5,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 13.w),
                    height: 18.h,
                    width: 24.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      color: AppColor.yellow,
                    ),
                    child: Text(
                      "${widget.model.discount}%",
                      style: TextStyleTheme.textStyle10Regular
                          .copyWith(color: AppColor.black),
                    ),
                  ),
                ),
                Positioned(
                  right: 13,
                  top: 5,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isLike = !isLike;
                      });
                    },
                    child: Icon(
                      isLike ? Icons.favorite : Icons.favorite_border,
                      color: isLike ? AppColor.red : AppColor.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Text(
              widget.model.text,
              style: TextStyleTheme.textStyle12Bold,
            ),
          ),
          verticalSpace(5),
          Row(
            children: [
              horizontalSpace(10),
              Text(
                widget.model.marka,
                style: TextStyleTheme.textStyle12Bold.copyWith(
                  color: AppColor.darkGrey,
                ),
              ),
              horizontalSpace(7),
              Icon(Iconsax.verify5, color: AppColor.blue, size: 16),
            ],
          ),
          Spacer(),
          Row(
            children: [
              horizontalSpace(10),
              Text(
                "\$${widget.model.price}",
                style: TextStyleTheme.textStyle14Bold,
              ),
              horizontalSpace(10),
              widget.model.discountPrice == null
                  ? SizedBox.shrink()
                  : Text(
                "\$${widget.model.discountPrice}",
                style: TextStyleTheme.textStyle14Bold.copyWith(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              Spacer(),
              Container(
                width: 32.h,
                height: 28.w,
                decoration: BoxDecoration(
                  color: AppColor.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.r),
                    bottomRight: Radius.circular(12.r),
                  ),
                ),
                child: IconButton(
                  padding: EdgeInsets.only(bottom: 0.h),
                  onPressed: () {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  icon: Icon(
                    isSelected ? Icons.done : Icons.add,
                    color: AppColor.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
