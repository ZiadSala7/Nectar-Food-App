import 'package:flutter/material.dart';
import 'package:nectar_app/core/widgets/custom_button.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/custom_details_view_appbar.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/product_details_view_body.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/product_image_card.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customDetailsViewAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: const SingleChildScrollView(
              child: Column(
                children: [
                  ProductImageCard(),
                  ProductDetailsViewBody(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: CustomButton(
              descriptionButtonTxt: 'Add to basket',
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
