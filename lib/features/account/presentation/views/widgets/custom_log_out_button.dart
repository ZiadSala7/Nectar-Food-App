import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class CustomLogOutButton extends StatelessWidget {
  const CustomLogOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: cardBorder,
        fixedSize: Size(MediaQuery.of(context).size.width * 0.85, 70),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.logout,
            color: commonColor,
          ),
          const SizedBox(
            width: 110,
          ),
          Text(
            'Log Out',
            style: Styles.textStyle20.copyWith(
              color: commonColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
