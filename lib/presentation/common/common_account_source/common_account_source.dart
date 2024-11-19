import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:styles/style/style.dart';

class CommonAccountSource extends StatelessWidget {
  final String title;
  final int balance;
  final String typeAccount;
  final String accountNumber;

  const CommonAccountSource(
      {super.key,
      required this.title,
      required this.balance,
      required this.typeAccount,
      required this.accountNumber});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          _title(),
          const SizedBox(
            height: 8,
          ),
          _main()
        ],
      ),
    );
  }

  Widget _title() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: theme.font.t12M.copyWith(color: theme.color.grey),
        ),
        Icon(
          Icons.keyboard_arrow_down,
          color: theme.color.grey,
        )
      ],
    );
  }

  Widget _main() {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              color: theme.color.grey.withOpacity(0.1), shape: BoxShape.circle),
          padding: const EdgeInsets.all(8),
          child: Icon(
            Icons.wallet,
            color: theme.color.primaryColor,
          ),
        ),
        const SizedBox(
          width: 6,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  NumberFormat("#,###").format(balance),
                  style: theme.font.t18B,
                ),
                Text(
                  " đ",
                  style:
                      theme.font.t18B.copyWith(color: theme.color.primaryColor),
                )
              ],
            ),
            const SizedBox(height: 4),
            Text(
              "$typeAccount | $accountNumber",
              style: theme.font.t11M.copyWith(color: theme.color.grey),
            )
          ],
        )
      ],
    );
  }
}
