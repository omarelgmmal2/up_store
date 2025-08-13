import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/design/custom_app_bar.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:e_commerce/home/widget/item_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewAllProducts extends StatelessWidget {
  const ViewAllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: true,
        title: Text(
          "Sports shoes",
          style: TextStyleTheme.textStyle20Bold.copyWith(color: AppColor.black),
        ),
      ),
      body: ListView(
        children: [
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
              items: ["Name", "Lower Price", "Higher Price", "Sale", "Newest"].map((filter) {
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
