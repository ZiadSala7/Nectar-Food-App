import 'package:flutter/material.dart';
import 'package:nectar_app/features/my%20cart/presentation/views/widgets/custom_my_cart_appbar.dart';
import 'package:nectar_app/features/my%20cart/presentation/views/widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customMyCartAppBar(),
      body: const MyCartViewBody(),
    );
  }
}
