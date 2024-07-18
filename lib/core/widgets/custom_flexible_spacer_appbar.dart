import 'package:flutter/material.dart';

class CustomFlexibleSpacerAppBar extends StatelessWidget {
  const CustomFlexibleSpacerAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Container(
        color: const Color(0xffF2F3F2),
      ),
    );
  }
}
