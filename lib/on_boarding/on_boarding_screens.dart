import 'package:e_commerce/auth/login/login_screen.dart';
import 'package:e_commerce/core/design/animated_wrapper.dart';
import 'package:e_commerce/core/design/app_button.dart';
import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/design/custom_app_bar.dart';
import 'package:e_commerce/core/logic/helper_methods.dart';
import 'package:e_commerce/core/utils/app_strings.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:e_commerce/model/on_boarding_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/utils/app_color.dart';

class OnBoardingScreens extends StatefulWidget {
  const OnBoardingScreens({super.key});

  @override
  State<OnBoardingScreens> createState() => _OnBoardingScreensState();
}

class _OnBoardingScreensState extends State<OnBoardingScreens> {
  final pageController = PageController();
  int currentIndex = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        actions: [
          IconButton(
            onPressed: () {
              currentIndex = 2;
              pageController.jumpToPage(currentIndex);
            },
            icon: Padding(
              padding: EdgeInsets.only(right: 34.w),
              child: Text(
                currentIndex == 2 ? "" : AppStrings.skip,
                style: TextStyleTheme.textStyle14Regular.copyWith(
                  color: AppColor.primary,
                ),
              ),
            ),
          ),
        ],
      ),
      body: PageView.builder(
        itemBuilder: (context, index) => Column(
          children: [
            AnimatedWrapper(
              index: 1,
              child: AppImage(onBoardingList[index].image),
            ),
            AnimatedWrapper(
              index: 2,
              child: Text(
                onBoardingList[index].title,
                style: TextStyleTheme.textStyle24Bold,
              ),
            ),
            verticalSpace(3),
            AnimatedWrapper(
              index: 3,
              child: Text(
                textAlign: TextAlign.center,
                onBoardingList[index].subTitle,
                style: TextStyleTheme.textStyle14Regular,
              ),
            ),
            verticalSpace(60),
            AnimatedWrapper(
              index: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  onBoardingList.length,
                  (index) => Padding(
                    padding: EdgeInsetsDirectional.only(end: 6.w),
                    child: Container(
                      height: 6.h,
                      width: index == currentIndex ? 44.w : 18.w,
                      decoration: BoxDecoration(
                        color: index == currentIndex
                            ? AppColor.primary
                            : Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            verticalSpace(150),
            AnimatedWrapper(
              index: 5,
              child: AppButton(
                text: currentIndex < 2
                    ? AppStrings.next
                    : AppStrings.getStarted,
                textStyle: TextStyleTheme.textStyle16Bold.copyWith(
                  color: AppColor.white,
                ),
                onPressed: () {
                  if (currentIndex == 2) {
                    navigateTo(toPage: LoginScreen(), isRemove: true);
                  }
                  pageController.jumpToPage(currentIndex + 1);
                },
              ),
            ),
          ],
        ),
        itemCount: onBoardingList.length,
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}
