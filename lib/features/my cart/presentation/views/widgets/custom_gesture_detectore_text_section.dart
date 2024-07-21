import 'package:flutter/cupertino.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_gesture_detector_text.dart';

class CustomGestureDetectorTextSection extends StatelessWidget {
  const CustomGestureDetectorTextSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomGestureDetectorText(
          txt: 'Terms',
          onTap: () {},
        ),
        Text(
          ' And ',
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        CustomGestureDetectorText(
          txt: 'Conditions',
          onTap: () {},
        ),
      ],
    );
  }
}
