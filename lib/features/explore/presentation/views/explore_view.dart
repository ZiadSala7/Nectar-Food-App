import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';
import 'package:nectar_app/features/explore/presentation/views/widgets/explore_view_body.dart';
import 'package:nectar_app/core/widgets/custom_search_field_button.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        physics: const NeverScrollableScrollPhysics(),
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              title: Text(
                'Find Products',
                style: Styles.textStyle20.copyWith(
                  color: Colors.black,
                  fontFamily: alef,
                ),
              ),
              centerTitle: true,
              pinned: false,
            ),
          ];
        },
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              CustomSearchFieldButton(),
              Expanded(
                child: ExploreViewBody(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
