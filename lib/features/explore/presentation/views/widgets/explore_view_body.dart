import 'package:flutter/material.dart';
import 'package:nectar_app/core/widgets/custom_search_field_button.dart';
import 'package:nectar_app/features/explore/presentation/views/widgets/explore_view_body_grid_view.dart';

class ExploreViewBody extends StatelessWidget {
  const ExploreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          CustomSearchFieldButton(),
          Expanded(
            child: ExploreViewBodyGridView(),
          ),
        ],
      ),
    );
  }
}
