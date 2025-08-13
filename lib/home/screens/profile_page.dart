import 'package:e_commerce/auth/login/login_screen.dart';
import 'package:e_commerce/core/design/app_button.dart';
import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/design/clip_path_main_page.dart';
import 'package:e_commerce/core/logic/helper_methods.dart';
import 'package:e_commerce/core/logic/my_app_methods.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:e_commerce/home/screens/addresses_screen.dart';
import 'package:e_commerce/home/screens/cart_screen.dart';
import 'package:e_commerce/home/screens/edit_profile.dart';
import 'package:e_commerce/home/screens/orders_screen.dart';
import 'package:e_commerce/home/widget/circular_container.dart';
import 'package:e_commerce/home/widget/custom_list_tile.dart';
import 'package:e_commerce/model/list_tile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0, -100),
            child: Container(
              height: 125.h,
              width: 125.h,
              decoration: BoxDecoration(
                color: AppColor.white,
                border: Border.all(color: AppColor.primary, width: 5),
                shape: BoxShape.circle,
              ),
              child: Transform.translate(
                offset: Offset(0, 3),
                child: Center(child: AppImage(AppImages.person)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0, -80),
            child: CustomListTile(
              title: Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Text(
                  "Omar Elgmmal",
                  style: TextStyleTheme.textStyle17Bold,
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Text(
                  "omarelgmmal23@gmail.com",
                  style: TextStyleTheme.textStyle12Regular,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  navigateTo(toPage: EditProfile());
                },
                icon: AppImage(AppImages.edit),
              ),
            ),
          ),
          verticalSpace(24),
          Transform.translate(
            offset: Offset(-85, -90),
            child: Text(
              "Account Settings",
              style: TextStyleTheme.textStyle20Bold.copyWith(
                color: AppColor.black,
              ),
            ),
          ),
          ...List.generate(
            listTileList.length,
            (index) => Transform.translate(
              offset: Offset(0, -80),
              child: GestureDetector(
                onTap: () {
                  if(listTileList[index].title == "My Addresses"){
                    navigateTo(toPage: AddressesScreen());
                  }else if(listTileList[index].title == "My Cart"){
                    navigateTo(toPage: CartScreen());
                  }else{
                    navigateTo(toPage: OrdersScreen());
                  }
                },
                child: CustomListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text(
                      listTileList[index].title,
                      style: TextStyleTheme.textStyle16Bold,
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text(
                      listTileList[index].subTitle,
                      style: TextStyleTheme.textStyle12Regular.copyWith(
                        color: AppColor.darkGrey,
                      ),
                    ),
                  ),
                  leading: Padding(
                    padding: EdgeInsets.only(left: 36.w),
                    child: AppImage(listTileList[index].image),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: AppButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.white,
                side: BorderSide(color: AppColor.black),
              ),
              textStyle: TextStyleTheme.textStyle16Bold,
              text: "Logout",
              onPressed: () async{
                await MyAppMethods.showErrorORWarningDialog(
                  context: context,
                  subtitle: "Are you sure?",
                  isError: false,
                  onPress: () {
                    navigateTo(toPage: LoginScreen(),isRemove: true);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
