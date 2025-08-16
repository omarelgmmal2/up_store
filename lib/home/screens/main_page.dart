import 'package:e_commerce/home/widget/custom_banner.dart';
import 'package:e_commerce/home/widget/custom_clip_path.dart';
import 'package:e_commerce/home/widget/custom_search_container.dart';
import 'package:e_commerce/home/widget/custom_section_heading.dart';
import 'package:e_commerce/home/widget/item_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
             CustomClipPath(),
            Transform.translate(
              offset: Offset(0.w, -70.h),
              child: CustomSearchContainer(),
            ),
            Transform.translate(
              offset: Offset(0.w, -40.h),
              child: CustomBanner(),
            ),
            CustomSectionHeading(
                text: "Popular Categories"
                ,onPressed: (){},
            ),
            ItemCategory(),
          ],
        ),
      ),
    );
  }
}
