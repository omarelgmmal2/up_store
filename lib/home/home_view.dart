import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/app_strings.dart';
import 'package:e_commerce/home/screens/main_page.dart';
import 'package:e_commerce/home/screens/profile_page.dart';
import 'package:e_commerce/home/screens/store_page.dart';
import 'package:e_commerce/home/screens/wishlist_page.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  List<Widget> pages = const [
    MainPage(),
    StorePage(),
    WishlistPage(),
    ProfilePage(),
  ];

  List<String> titles = [
    AppStrings.home,
    AppStrings.store,
    AppStrings.wishlist,
    AppStrings.profile,
  ];

  List<String> icons = [
    AppImages.home,
    AppImages.store,
    AppImages.wishlist,
    AppImages.profile,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        backgroundColor: AppColor.white,
        indicatorColor: AppColor.grey.withOpacity(0.20),
        elevation: 0.0,
        selectedIndex: currentIndex,
        destinations: List.generate(
          pages.length,
          (index) => NavigationDestination(
            icon: AppImage(icons[index], color: AppColor.black),
            label: titles[index],
          ),
        ),
      ),
    );
  }
}
