import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/styles.dart';

class PersonalDataAccountListTile extends StatelessWidget {
  const PersonalDataAccountListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 35,
        backgroundColor: Colors.amber,
        child: Image.asset(AppImages.apple),
      ),
      title: Row(
        children: [
          Text(
            'Ziad Salah',
            style: Styles.textStyle20.copyWith(color: Colors.black),
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.edit_outlined,
              size: 20,
              color: commonColor,
            ),
          ),
        ],
      ),
      subtitle: Text(
        'zslah1935@gmail.com',
        style: Styles.textStyle16.copyWith(
          color: greyColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
