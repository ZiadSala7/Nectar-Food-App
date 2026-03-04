import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class CustomAccountItem extends StatelessWidget {
  final Widget icon;
  final String title;
  final Function() onPressed;
  const CustomAccountItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            icon,
            const SizedBox(
              width: 15,
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.58,
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle18.copyWith(color: Colors.black),
              ),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Icons.arrow_forward_ios,
            size: 22,
          ),
        ),
      ],
    );
  }
}
