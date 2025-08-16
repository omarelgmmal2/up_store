import 'package:e_commerce/core/logic/helper_methods.dart';
import 'package:e_commerce/home/widget/custom_item_category.dart';
import 'package:e_commerce/home/widget/details_screen.dart';
import 'package:e_commerce/model/item_category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemCategory extends StatelessWidget {
  const ItemCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        mainAxisExtent: 288,
      ),
      itemCount: itemCategoryList.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          navigateTo(toPage: DetailsScreen(
            model: itemCategoryList[index],
          ));
        },
        child: CustomItemCategory(
          model: itemCategoryList[index],
        ),
      ),
    );
  }
}
