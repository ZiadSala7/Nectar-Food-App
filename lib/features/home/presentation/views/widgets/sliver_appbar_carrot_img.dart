import 'package:flutter/material.dart';
import 'package:nectar_app/core/widgets/custom_orange_carrot_img.dart';

class SliverAppBarCarrotImg extends StatelessWidget {
  const SliverAppBarCarrotImg({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      expandedHeight: height * 0.1,
      flexibleSpace: const FlexibleSpaceBar(
        title: CustomOrangeCarrotImg(
          mediaSize: .03,
        ),
      ),
    );
  }
}
