import 'package:flutter/material.dart';
import 'package:nectar_app/core/widgets/custom_appbar.dart';
import 'package:nectar_app/features/my%20cart/presentation/views/widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('My Cart'),
      body: const MyCartViewBody(),
    );
  }
}
