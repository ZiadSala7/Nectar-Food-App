import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_images.dart';
import 'package:nectar_app/core/widgets/custom_orange_carrot_img.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.backgroundImg),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomOrangeCarrotImg(),
          ),
        ],
      ),
    );
  }
}
