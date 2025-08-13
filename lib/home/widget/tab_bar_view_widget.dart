import 'package:e_commerce/home/widget/container_brand_store.dart';
import 'package:e_commerce/home/widget/custom_section_heading.dart';
import 'package:e_commerce/home/widget/item_category.dart';
import 'package:flutter/material.dart';

class TabBarViewWidget extends StatelessWidget {
  const TabBarViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Column(
          children: [
            ContainerBrandStore(),
            CustomSectionHeading(
              text: "You might like",
              onPressed: () {},
            ),
            ItemCategory(),
          ],
        ),
      ],
    );
  }
}
