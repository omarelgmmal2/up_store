import 'package:e_commerce/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomTabBar({super.key, required this.tabs, this.controller});

  final List<Widget> tabs;
  final TabController? controller;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      isScrollable: true,
      labelColor: AppColor.primary,
      unselectedLabelColor: AppColor.darkGrey,
      indicatorColor: AppColor.primary,
      tabs: tabs,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
