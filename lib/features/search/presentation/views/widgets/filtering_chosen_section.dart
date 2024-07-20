import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_chosen_filtering_item.dart';

class CustomFilteringChosenSection extends StatelessWidget {
  final String category;
  final String label1;
  final String label2;
  final String label3;
  final String label4;
  const CustomFilteringChosenSection({
    super.key,
    required this.category,
    required this.label1,
    required this.label2,
    required this.label3,
    required this.label4,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          category,
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        CustomChosenFilteringItem(
          label: label1,
        ),
        CustomChosenFilteringItem(
          label: label2,
        ),
        CustomChosenFilteringItem(
          label: label3,
        ),
        CustomChosenFilteringItem(
          label: label4,
        ),
      ],
    );
  }
}
