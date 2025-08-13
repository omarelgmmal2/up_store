import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:e_commerce/model/item_category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class ItemSubCategories extends StatefulWidget {
  final ItemCategoryModel model;

  const ItemSubCategories({super.key, required this.model});

  @override
  State<ItemSubCategories> createState() => _ItemSubCategoriesState();
}

class _ItemSubCategoriesState extends State<ItemSubCategories> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Color(0xffBEBEBE).withOpacity(0.20),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 1.w),
            height: 85.h,
            decoration: BoxDecoration(
              color: AppColor.white,
              border: Border.all(color: Color(0xffBEBEBE).withOpacity(0.20)),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: AppImage(
              widget.model.image,
              width: 89.w,
              fit: BoxFit.scaleDown,
            ),
          ),
          horizontalSpace(6),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5.h),
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  widget.model.text,
                  style: TextStyleTheme.textStyle14Bold,
                ),
              ),
              verticalSpace(5),
              Row(
                children: [
                  Text(
                    widget.model.marka,
                    style: TextStyleTheme.textStyle10Regular.copyWith(
                      color: AppColor.darkGrey,
                    ),
                  ),
                  horizontalSpace(5),
                  Icon(Iconsax.verify5, size: 10, color: AppColor.blue),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Text(
                    "\$${widget.model.price}",
                    style: TextStyleTheme.textStyle14Bold,
                  ),
                  horizontalSpace(5),
                  widget.model.discountPrice == null
                      ? SizedBox.shrink()
                      : Text(
                          "\$${widget.model.discountPrice}",
                          style: TextStyleTheme.textStyle14Bold.copyWith(
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                ],
              ),
            ],
          ),
          Transform.translate(
            offset: Offset(0, 32),
            child: Container(
              margin: EdgeInsets.only(left: 26.w),
              width: 36.h,
              height: 33.w,
              decoration: BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.r),
                  bottomRight: Radius.circular(10.r),
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
          ),
        ],
      ),
    );
  }
}
