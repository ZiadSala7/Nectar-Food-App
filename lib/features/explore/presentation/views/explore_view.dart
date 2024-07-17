import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';
import 'package:nectar_app/features/explore/presentation/views/widgets/explore_view_body.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          color: Colors.white,
        ),
        automaticallyImplyLeading: false,
        title: Text(
          'Find Products',
          style: Styles.textStyle20.copyWith(
            color: Colors.black,
            fontFamily: alef,
          ),
        ),
        centerTitle: true,
      ),
      body: const ExploreViewBody(),
    );
  }
}
