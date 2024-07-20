import 'package:flutter/material.dart';
import 'package:nectar_app/core/widgets/custom_appbar.dart';
import 'package:nectar_app/features/favourites/presentation/views/widgets/favourites_view_body.dart';

class FavouritesView extends StatelessWidget {
  const FavouritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Favourites', null),
      body: const FavouritesViewBody(),
    );
  }
}
