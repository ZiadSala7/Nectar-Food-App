import 'package:flutter/material.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/custom_home_view_text_field.dart';

class SliverAppBarTextField extends StatelessWidget {
  const SliverAppBarTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      pinned: true,
      automaticallyImplyLeading: false,
      title: CustomHomeViewTextField(),
    );
  }
}
