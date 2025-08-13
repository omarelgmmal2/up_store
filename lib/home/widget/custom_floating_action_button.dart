import 'package:e_commerce/core/logic/helper_methods.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/home/screens/add_new_address.dart';
import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColor.primary,
        onPressed: (){},
      child: IconButton(
        onPressed: (){
          navigateTo(toPage: AddNewAddress());
        },
        icon: Icon(Icons.add,color: AppColor.white,),
      ),
    );
  }
}
