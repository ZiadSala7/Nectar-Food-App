import 'package:flutter/material.dart';
import 'package:nectar_app/core/widgets/custom_button.dart';
import 'package:nectar_app/features/favourites/presentation/views/widgets/custom_favourite_item.dart';

class FavouritesViewBody extends StatelessWidget {
  const FavouritesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.8,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const CustomFavouriteItem();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: CustomButton(
            descriptionButtonTxt: 'Add All To Cart',
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
