import 'package:flutter/material.dart';

class CustomSpacing extends StatelessWidget {
  const CustomSpacing({
    super.key,
    required this.height,
  });
  final double height;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: height,
      ),
    );
  }
}
