import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsImageContainer extends StatefulWidget {
  const DetailsImageContainer({super.key});

  @override
  State<DetailsImageContainer> createState() => _DetailsImageContainerState();
}

class _DetailsImageContainerState extends State<DetailsImageContainer> {
  int selectedIndex = 0;
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 300.h,
          child: Center(
            child: AppImage(
              AppImages.blueJaket,
              fit: BoxFit.cover,
              height: 270.h,
              width: 320.w,
            ),
          ),
        ),
        Positioned(
          right: 0,
          left: 5,
          bottom: 30,
          child: SizedBox(
            height: 70.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  alignment: AlignmentDirectional.center,
                  height: 70.h,
                  width: 70.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusGeometry.circular(10.r),
                    border: Border.all(
                      color: selectedIndex == index
                          ? AppColor.primary
                          : Color(0xffF2F0F0),
                    ),
                    color: Color(0xffF2F0F0),
                  ),
                  child: AppImage(AppImages.blueJaket),
                ),
              ),
              separatorBuilder: (context, index) => horizontalSpace(16),
              itemCount: 4,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15.h, left: 5.w),
          height: 40.h,
          width: 40.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffF2F2F2).withOpacity(0.82),
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            margin: EdgeInsets.only(top: 15.h, right: 5.w),
            height: 40.h,
            width: 40.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffF2F2F2).withOpacity(0.82),
            ),
            child: IconButton(
              onPressed: () {
                setState(() {
                  isLike = !isLike;
                });
              },
              icon: Icon(
                Icons.favorite_border,
                color: isLike ? AppColor.red : AppColor.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
