import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/design/custom_app_bar.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:e_commerce/home/widget/account_settings_widget.dart';
import 'package:e_commerce/home/widget/custom_upload_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: true,
        title: Text(
          "Edit Profile",
          style: TextStyleTheme.textStyle20Bold.copyWith(color: AppColor.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(24),
            CustomUploadImage(),
            verticalSpace(20),
            Divider(),
            verticalSpace(28),
            Text(
              "Account Settings",
              style: TextStyleTheme.textStyle20Bold.copyWith(
                color: AppColor.black,
              ),
            ),
            verticalSpace(16),
            AccountSettingsWidget(
              text: "Name",
              name: "Omar Elgmmal",
              onTap: () {},
              icon: Icon(Icons.arrow_forward_ios, size: 16),
            ),
            verticalSpace(16),
            AccountSettingsWidget(
              text: "Username",
              name: "omarelgmmal23",
              onTap: () {},
              icon: Icon(Icons.arrow_forward_ios, size: 16),
            ),
            verticalSpace(24),
            Divider(),
            verticalSpace(25),
            Text(
              "Profile Settings",
              style: TextStyleTheme.textStyle20Bold.copyWith(
                color: AppColor.black,
              ),
            ),
            verticalSpace(24),
            AccountSettingsWidget(
              text: "User ID",
              name: "232345",
              onTap: () {},
              icon: AppImage(AppImages.idCopy),
            ),
            verticalSpace(16),
            AccountSettingsWidget(
              text: "Email",
              name: "omarelgmmal23@gmail.com",
              onTap: () {},
              icon: Icon(Icons.arrow_forward_ios, size: 16),
            ),
            verticalSpace(16),
            AccountSettingsWidget(
              text: "Phone Number",
              name: "+201062156826",
              onTap: () {},
              icon: Icon(Icons.arrow_forward_ios, size: 16),
            ),
            verticalSpace(16),
            AccountSettingsWidget(
              text: "Gender",
              name: "Male",
              onTap: () {},
              icon: Icon(Icons.arrow_forward_ios, size: 16),
            ),
            verticalSpace(16),
            Divider(),
            TextButton(
              onPressed: () {},
              child: Center(
                child: Text(
                  "Close Account",
                  style: TextStyleTheme.textStyle14Regular.copyWith(
                    color: AppColor.red,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
