import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';
import 'package:nectar_app/features/explore/presentation/views/explore_view.dart';
import 'package:nectar_app/features/favourites/presentation/views/favourites_view.dart';
import 'package:nectar_app/features/home/presentation/views/home_view.dart';
import 'package:nectar_app/features/my%20cart/presentation/views/my_cart_view.dart';

import '../../../account/presentation/views/account_view.dart';

List<Widget> widgets = [
  const HomeView(),
  const ExploreView(),
  const MyCartView(),
  const FavouritesView(),
  const AccountView(),
];

class AppViewBottomNavigation extends StatefulWidget {
  const AppViewBottomNavigation({super.key});

  @override
  State<AppViewBottomNavigation> createState() =>
      _AppViewBottomNavigationState();
}

class _AppViewBottomNavigationState extends State<AppViewBottomNavigation> {
  int selectedIndx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectedIndx = value;
          });
        },
        currentIndex: selectedIndx,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: Styles.textStyle14.copyWith(),
        selectedLabelStyle: Styles.textStyle14.copyWith(),
        selectedItemColor: commonColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'Account',
          ),
        ],
      ),
      body: PageView(
        children: [
          widgets[selectedIndx],
        ],
      ),
    );
  }
}
