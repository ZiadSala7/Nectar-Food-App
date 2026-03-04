import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';

class CustomMyCartButton extends StatelessWidget {
  final String descriptionButtonTxt;
  final Function() onPressed;
  const CustomMyCartButton({
    super.key,
    required this.descriptionButtonTxt,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.sizeOf(context).width;
    final buttonHeight = mediaWidth < 360 ? 58.0 : 66.0;

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: commonColor,
        fixedSize: Size(mediaWidth * 0.85, buttonHeight),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Text(
                descriptionButtonTxt,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle20.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff489E67),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Text(
                r'$200.00',
                textAlign: TextAlign.center,
                style: Styles.textStyle16.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
