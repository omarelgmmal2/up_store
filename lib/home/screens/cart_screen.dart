import 'package:e_commerce/core/design/app_button.dart';
import 'package:e_commerce/core/design/custom_app_bar.dart';
import 'package:e_commerce/core/logic/helper_methods.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:e_commerce/home/screens/checkout_screen.dart';
import 'package:e_commerce/home/widget/item_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: true,
        title: Text(
          "Cart",
          style: TextStyleTheme.textStyle20Bold.copyWith(
            color: AppColor.black,
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(40.h),
        child: AppButton(
          textStyle: TextStyleTheme.textStyle16Bold.copyWith(
            color: AppColor.white,
          ),
            text: "Checkout \$8663.0",
            onPressed: (){
            navigateTo(toPage: CheckoutScreen());
            },
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 40.w,vertical: 20.h),
          itemBuilder: (context, index) => ItemCart(),
        separatorBuilder: (context, index) => verticalSpace(16),
        itemCount: 3,
      ),
    );
  }
}
