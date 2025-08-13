import 'package:flutter/material.dart';

class CustomOrderCheckout extends StatelessWidget {
  final String text;
  final double price;
  final TextStyle? style;

  const CustomOrderCheckout({
    super.key,
    required this.text,
    required this.price,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: style),
        Text("\$$price", style: style),
      ],
    );
  }
}
