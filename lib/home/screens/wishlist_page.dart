import 'package:e_commerce/core/design/custom_app_bar.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:e_commerce/home/widget/item_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Text(
            "Wishlist",
            style: TextStyleTheme.textStyle20Bold.copyWith(
              color: AppColor.black,
            ),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20.w),
            height: 40.h,
          width: 40.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffF2F2F2).withOpacity(0.82),
          ),
          child: IconButton(onPressed: () {}, icon: Icon(Icons.add),
      ),
          ),
        ],
      ),
      body: ListView(
        children: [
          ItemCategory(),
        ],
      ),
    );
  }
}
