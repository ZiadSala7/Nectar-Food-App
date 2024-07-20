import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar_app/features/search/presentation/views/widgets/filter_view_body.dart';
import '../../../../core/widgets/custom_appbar.dart';

class FilterView extends StatelessWidget {
  const FilterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        'Filters',
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(Icons.close),
        ),
      ),
      body: const FilterViewBody(),
    );
  }
}
