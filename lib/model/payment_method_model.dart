import 'package:e_commerce/core/utils/app_images.dart';

class PaymentMethodModel {
  final String image, text;

  PaymentMethodModel({
    required this.image,
    required this.text,
  });
}

final List<PaymentMethodModel> paymentMethodList = [
  PaymentMethodModel(
      image:AppImages.cashOnDelivery,
      text: "Cash on delivery",
  ),
  PaymentMethodModel(
      image:AppImages.visa,
      text: "VISA",
  ),
  PaymentMethodModel(
      image:AppImages.mastercard,
      text: "Master Card",
  ),
  PaymentMethodModel(
      image:AppImages.paypal,
      text: "Paypal",
  ),
  PaymentMethodModel(
      image:AppImages.easyPaisa,
      text: "Easypaisa",
  ),
];