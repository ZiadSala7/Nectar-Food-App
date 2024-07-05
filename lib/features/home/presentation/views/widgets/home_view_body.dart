import 'package:flutter/material.dart';
import 'package:nectar_app/core/widgets/custom_orange_carrot_img.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/custom_automatic_scrolling_list.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/custom_home_view_text_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false,
          expandedHeight: height * 0.1,
          flexibleSpace: const FlexibleSpaceBar(
            title: CustomOrangeCarrotImg(
              mediaSize: .03,
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 15,
          ),
        ),
        const SliverAppBar(
          pinned: true,
          automaticallyImplyLeading: false,
          title: CustomHomeViewTextField(),
        ),
        SliverToBoxAdapter(
          child: CustomAutomaticScrollingList(
            height: height,
            pageController: pageController,
          ),
        ),
      ],
    );
  }
}
