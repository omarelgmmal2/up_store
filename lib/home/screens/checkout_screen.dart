import 'package:e_commerce/core/design/app_button.dart';
import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/design/custom_app_bar.dart';
import 'package:e_commerce/core/logic/helper_methods.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:e_commerce/home/screens/add_card.dart';
import 'package:e_commerce/home/widget/custom_order_checkout.dart';
import 'package:e_commerce/home/widget/custom_promo_code.dart';
import 'package:e_commerce/home/widget/custom_show_bottom_sheet.dart';
import 'package:e_commerce/home/widget/custom_show_bottom_sheet_address.dart';
import 'package:e_commerce/home/widget/item_order_review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: true,
        title: Text(
          "Order Review",
          style: TextStyleTheme.textStyle20Bold.copyWith(
            color: AppColor.black,
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.h,vertical: 35.h),
        child: AppButton(
          textStyle: TextStyleTheme.textStyle16Bold.copyWith(
            color: AppColor.white,
          ),
          text: "Checkout \$8663.0",
          onPressed: (){
            navigateTo(toPage: AddCard());
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 36.w,vertical: 20.h),
        children: [
          ListView.separated(
            shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => ItemOrderReview(),
              separatorBuilder: (context, index) => verticalSpace(16),
              itemCount: 3,
          ),
          verticalSpace(16),
          CustomPromoCode(),
          Container(
            padding: EdgeInsets.all(16.h),
            height: 360.h,
            width: 318.w,
            decoration: BoxDecoration(
              border: Border.all(
                color:  AppColor.grey,
              ),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomOrderCheckout(
                  text: "Subtotal",
                  price: 7997.0,
                  style: TextStyleTheme.textStyle12Regular,
                ),
                verticalSpace(5),
                CustomOrderCheckout(
                  text: "Shipping Fee",
                  price: 32.0,
                  style: TextStyleTheme.textStyle12Regular,
                ),
                verticalSpace(5),
                CustomOrderCheckout(
                  text: "Tax Fee",
                  price: 231.0,
                  style: TextStyleTheme.textStyle12Regular,
                ),
                verticalSpace(10),
                CustomOrderCheckout(
                  text: "Order Total",
                  price: 8663.0,
                  style: TextStyleTheme.textStyle14Bold,
                ),
                verticalSpace(16),
                Divider(),
                verticalSpace(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Payment Method",
                      style: TextStyleTheme.textStyle20Bold.copyWith(
                        color: AppColor.black,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) => CustomShowBottomSheet(),
                        );
                      },
                      child: Text(
                        "Change",
                        style: TextStyleTheme.textStyle12Regular.copyWith(
                          color: AppColor.primary,
                        ),
                      ),
                    ),
                  ],
                ),
                verticalSpace(10),
                Row(
                  children: [
                      AppImage(AppImages.mastercard),
                    horizontalSpace(16),
                    Text(
                      "Mater Card",
                      style: TextStyleTheme.textStyle12Bold
                    ),
                  ],
                ),
                verticalSpace(24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shipping Address",
                      style: TextStyleTheme.textStyle20Bold.copyWith(
                        color: AppColor.black,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => CustomShowBottomSheetAddress(),
                        );
                      },
                      child: Text(
                        "Change",
                        style: TextStyleTheme.textStyle12Regular.copyWith(
                          color: AppColor.primary,
                        ),
                      ),
                    ),
                  ],
                ),
                verticalSpace(10),
                Text(
                  "Omar Elgmmal",
                  style: TextStyleTheme.textStyle12Bold,
                ),
                verticalSpace(5),
                Row(
                  children: [
                    AppImage(AppImages.phone),
                    Text(
                      "+201062156826",
                      style: TextStyleTheme.textStyle12Bold,
                    ),
                  ],
                ),
                verticalSpace(5),
                Row(
                  children: [
                    AppImage(AppImages.user),
                    Text(
                      "+House No.295, Hyderabad, Sindh, Pakistan",
                      style: TextStyleTheme.textStyle12Bold,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
