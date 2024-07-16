import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';

class HomeViewSearchField extends StatelessWidget {
  const HomeViewSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        padding: const EdgeInsets.all(10),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor,
        ),
        child: const Row(
          children: [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            Text(
              'Search Store',
              style: Styles.textStyle18,
            ),
          ],
        ),
      ),
    );
  }
}
