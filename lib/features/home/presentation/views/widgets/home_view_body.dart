import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nectar_app/core/widgets/custom_card_item.dart';
import 'package:nectar_app/core/widgets/custom_spacing.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/custom_automatic_scrolling_list.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/custom_grocery_item.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/custom_home_view_text_section.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/custom_list_view_builder.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/sliver_appbar_carrot_img.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/sliver_appbar_text_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    double height = MediaQuery.of(context).size.height;
    return CustomScrollView(
      slivers: [
        SliverAppBarCarrotImg(height: height),
        const CustomSpacing(height: 15),
        const SliverAppBarTextField(),
        // First Section
        SliverToBoxAdapter(
          child: CustomAutomaticScrollingList(
            height: height,
            pageController: pageController,
          ),
        ),
        // Second Section
        const CustomHomeViewTextSection(
          firstTxt: 'Exclusive Offer',
          secondTxt: 'See all',
        ),
        CustomListViewBuilder(
          widget: CustomCardItem(height: height),
          height: height,
        ),
        const CustomSpacing(height: 30),
        // Third Section
        const CustomHomeViewTextSection(
          firstTxt: 'Best Selling',
          secondTxt: 'See all',
        ),
        const CustomSpacing(height: 30),
        CustomListViewBuilder(
          widget: CustomCardItem(height: height),
          height: height,
        ),
        const CustomSpacing(height: 30),
        //Fourth Section
        const CustomHomeViewTextSection(
          firstTxt: 'Groceries',
          secondTxt: 'See all',
        ),
        const CustomSpacing(height: 30),
        CustomListViewBuilder(
          height: height * 0.6,
          widget: const Padding(
            padding: EdgeInsets.all(10.0),
            child: CustomGroceryItem(
              img: '',
              txt: '',
              color: Color(0xffFEF1E4),
            ),
          ),
        ),
        const CustomSpacing(height: 30),
        CustomListViewBuilder(
          widget: CustomCardItem(height: height),
          height: height,
        ),
      ],
    );
  }
}
