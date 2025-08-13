import 'package:e_commerce/core/design/custom_app_bar.dart';
import 'package:e_commerce/core/logic/helper_methods.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:e_commerce/home/widget/custom_section_heading.dart';
import 'package:e_commerce/home/widget/item_sub_categories.dart';
import 'package:e_commerce/home/widget/view_all_products.dart';
import 'package:e_commerce/model/item_category_model.dart';
import 'package:e_commerce/model/popular_categories_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubCategoriesScreen extends StatelessWidget {
  final PopularCategoriesModel model;

  const SubCategoriesScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: true,
        title: Text(
          model.text,
          style: TextStyleTheme.textStyle20Bold.copyWith(color: AppColor.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSectionHeading(
                text: "Sports Shoes",
                onPressed: () {
                  navigateTo(toPage: ViewAllProducts());
                },
            ),
            verticalSpace(16),
            SizedBox(
              height: 92.h,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    ItemSubCategories(model: itemCategoryList[index]),
                separatorBuilder: (context, index) => horizontalSpace(16),
                itemCount: itemCategoryList.length,
              ),
            ),
            verticalSpace(24),
            CustomSectionHeading(
                text: "Track suits",
                onPressed: () {
                  navigateTo(toPage: ViewAllProducts());
                },
            ),
            verticalSpace(16),
            SizedBox(
              height: 92.h,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    ItemSubCategories(model: itemCategoryList[index]),
                separatorBuilder: (context, index) => horizontalSpace(16),
                itemCount: itemCategoryList.length,
              ),
            ),
            verticalSpace(24),
            CustomSectionHeading(
                text: "Sports Shoes",
                onPressed: () {
                  navigateTo(toPage: ViewAllProducts());
                },
            ),
            verticalSpace(16),
            SizedBox(
              height: 92.h,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    ItemSubCategories(model: itemCategoryList[index]),
                separatorBuilder: (context, index) => horizontalSpace(16),
                itemCount: itemCategoryList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
