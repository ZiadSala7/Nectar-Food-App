import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';
import 'package:nectar_app/core/widgets/custom_flexible_spacer_appbar.dart';
import 'package:nectar_app/features/my%20cart/presentation/views/widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const CustomFlexibleSpacerAppBar(),
        automaticallyImplyLeading: false,
        title: Text(
          'My Cart',
          style: Styles.textStyle25.copyWith(
            color: Colors.black,
            fontFamily: alef,
          ),
        ),
        centerTitle: true,
      ),
      body: const MyCartViewBody(),
    );
  }
}
