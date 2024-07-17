import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_images.dart';
import 'package:nectar_app/core/widgets/custom_search_field_button.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        physics: const NeverScrollableScrollPhysics(),
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              title: Image.asset(
                AppImages.orangeCarrot,
                height: 50,
                width: 35,
              ),
              centerTitle: true,
              pinned: false,
            ),
          ];
        },
        body: const Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              CustomSearchFieldButton(),
              Expanded(
                child: HomeViewBody(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
