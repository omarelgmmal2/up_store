import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final Widget? leading;

  const CustomListTile({
    super.key,
    this.title,
    this.subtitle,
    this.trailing,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // title: Padding(
      //   padding: EdgeInsets.only(left: 16.w),
      //   child: Text(
      //     listTileList[index].title,
      //     style: TextStyleTheme.textStyle16Bold,
      //   ),
      // ),
      // subtitle: Padding(
      //   padding: EdgeInsets.only(left: 16.w),
      //   child: Text(
      //     listTileList[index].subTitle,
      //     style: TextStyleTheme.textStyle12Regular.copyWith(
      //       color: AppColor.darkGrey,
      //     ),
      //   ),
      // ),
      // trailing: trailing,
      // leading: Padding(
      //   padding: EdgeInsets.only(left: 36.w),
      //   child: GestureDetector(
      //     onTap: () {},
      //     child: AppImage(listTileList[index].image),
      //   ),
      // ),
      title: title,
      subtitle: subtitle,
      trailing: trailing,
      leading: leading,
    );
  }
}
