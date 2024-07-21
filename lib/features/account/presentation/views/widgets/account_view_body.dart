import 'package:flutter/material.dart';
import 'package:nectar_app/features/account/presentation/views/widgets/personal_data_account_list_tile.dart';
import 'account_data_items.dart';
import 'custom_log_out_button.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 60),
        PersonalDataAccountListTile(),
        SizedBox(height: 20),
        AccountDataItems(),
        CustomLogOutButton(),
      ],
    );
  }
}
