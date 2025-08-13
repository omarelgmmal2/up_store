import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final Color? backgroundColor;
  final List<Widget>? actions;
  final Widget? leading;
  final double? toolbarHeight;
  final bool automaticallyImplyLeading;

  const CustomAppBar({
    super.key,
    this.title,
    this.actions,
    this.leading,
    this.toolbarHeight = 60,
    this.automaticallyImplyLeading = true, this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: automaticallyImplyLeading,
      elevation: 0.0,
      toolbarHeight: toolbarHeight ?? 60.h,
      leading: leading,
      actions: actions,
      title: title,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight ?? 60.h);
}
