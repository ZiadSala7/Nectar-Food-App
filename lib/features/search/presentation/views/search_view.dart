import 'package:flutter/material.dart';
import 'package:nectar_app/features/search/presentation/views/widgets/custom_search_appbar_textfield.dart';
import 'package:nectar_app/features/search/presentation/views/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customSearchViewAppBar(context),
      body: const SearchViewBody(),
    );
  }
}
