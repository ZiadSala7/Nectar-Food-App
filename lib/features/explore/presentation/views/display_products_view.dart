import 'package:flutter/material.dart';
import 'package:nectar_app/features/explore/presentation/views/widgets/custom_display_product_appbar.dart';
import 'package:nectar_app/features/explore/presentation/views/widgets/display_product_view_body.dart';

class DisplayProductsView extends StatelessWidget {
  const DisplayProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customDisplayProductAppBar(),
      body: const DisplayProductsViewBody(),
    );
  }
}
