import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class CustomLogOutButton extends StatelessWidget {
  const CustomLogOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.sizeOf(context).width;

    return TextButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: cardBorder,
        fixedSize: Size(mediaWidth * 0.85, mediaWidth < 360 ? 58 : 66),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.logout,
            color: commonColor,
          ),
          Expanded(
            child: Center(
              child: Text(
                'Log Out',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle20.copyWith(
                  color: commonColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
