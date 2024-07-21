import 'package:flutter/material.dart';
import 'custom_account_item.dart';

class AccountDataItems extends StatelessWidget {
  const AccountDataItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(thickness: .5),
        CustomAccountItem(
          icon: const Icon(Icons.local_mall_outlined),
          title: 'Orders',
          onPressed: () {},
        ),
        const Divider(thickness: .5),
        CustomAccountItem(
          icon: const Icon(Icons.badge_outlined),
          title: 'My Details',
          onPressed: () {},
        ),
        const Divider(
          indent: 20,
          endIndent: 20,
          thickness: .5,
        ),
        CustomAccountItem(
          icon: const Icon(Icons.location_on_outlined),
          title: 'Delivery Address',
          onPressed: () {},
        ),
        const Divider(
          indent: 20,
          endIndent: 20,
          thickness: .5,
        ),
        CustomAccountItem(
          icon: const Icon(Icons.credit_card),
          title: 'Payment Methods',
          onPressed: () {},
        ),
        const Divider(thickness: 1),
        CustomAccountItem(
          icon: const Icon(Icons.confirmation_num_outlined),
          title: 'Promo Card',
          onPressed: () {},
        ),
        const Divider(
          thickness: .5,
        ),
        CustomAccountItem(
          icon: const Icon(Icons.notifications_active_outlined),
          title: 'Notification',
          onPressed: () {},
        ),
        const Divider(thickness: .5),
        CustomAccountItem(
          icon: const Icon(Icons.help_outline_outlined),
          title: 'Help',
          onPressed: () {},
        ),
        const Divider(thickness: .5),
        CustomAccountItem(
          icon: const Icon(Icons.info_outline_rounded),
          title: 'About',
          onPressed: () {},
        ),
        const Divider(thickness: .5),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
