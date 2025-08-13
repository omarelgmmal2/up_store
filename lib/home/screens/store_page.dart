import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/design/clip_path_main_page.dart';
import 'package:e_commerce/core/logic/helper_methods.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/font_weight_helper.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:e_commerce/home/screens/brand_screen.dart';
import 'package:e_commerce/home/screens/cart_screen.dart';
import 'package:e_commerce/home/widget/circular_container.dart';
import 'package:e_commerce/home/widget/custom_brands_container.dart';
import 'package:e_commerce/home/widget/custom_search_container.dart';
import 'package:e_commerce/home/widget/custom_section_heading.dart';
import 'package:e_commerce/home/widget/custom_tab_bar.dart';
import 'package:e_commerce/home/widget/tab_bar_view_widget.dart';
import 'package:e_commerce/model/brands_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 340.h,
                toolbarHeight: 45.h,
                pinned: true,
                floating: false,
                flexibleSpace: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipPath(
                        clipper: ClipPathMainPage(),
                        child: Container(
                          height: 200.h,
                          width: double.infinity,
                          decoration: BoxDecoration(color: AppColor.primary),
                          child: Stack(
                            children: [
                              Positioned(
                                top: -100.h,
                                right: -160.w,
                                child: CircularContainer(),
                              ),
                              Positioned(
                                top: 55.h,
                                left: 36.w,
                                child: Text(
                                  "Store",
                                  style: TextStyleTheme.textStyle20Bold,
                                ),
                              ),
                              Positioned(
                                top: 45.h,
                                right: 36.w,
                                child: Badge(
                                  backgroundColor: AppColor.white,
                                  offset: Offset(-5, 5),
                                  label: Text(
                                    "0",
                                    style: TextStyleTheme.textStyle10Regular
                                        .copyWith(
                                          color: AppColor.black,
                                          fontWeight:
                                              FontWeightHelper.extraBold,
                                        ),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      navigateTo(toPage: CartScreen());
                                    },
                                    icon: AppImage(
                                      AppImages.cart,
                                      color: AppColor.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(0.w, -70.h),
                        child: CustomSearchContainer(),
                      ),
                      Transform.translate(
                        offset: Offset(0.w, -50.h),
                        child: CustomSectionHeading(
                          text: "Brands",
                          onPressed: () {
                            navigateTo(toPage: BrandScreen());
                          },
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(0.w, -50.h),
                        child: SizedBox(
                          height: 60.h,
                          child: ListView.separated(
                            padding: EdgeInsets.symmetric(horizontal: 24.w),
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) =>
                                horizontalSpace(16),
                            itemBuilder: (context, index) =>
                                CustomBrandsContainer(model: brandsList[index]),
                            itemCount: brandsList.length,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                bottom: CustomTabBar(
                  tabs: [
                    Tab(
                      child: Text(
                        "Sports",
                        style: TextStyleTheme.textStyle16Regular,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Furniture",
                        style: TextStyleTheme.textStyle16Regular,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Electronics",
                        style: TextStyleTheme.textStyle16Regular,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Clothes",
                        style: TextStyleTheme.textStyle16Regular,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Cosmetics",
                        style: TextStyleTheme.textStyle16Regular,
                      ),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              TabBarViewWidget(),
              TabBarViewWidget(),
              TabBarViewWidget(),
              TabBarViewWidget(),
              TabBarViewWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
