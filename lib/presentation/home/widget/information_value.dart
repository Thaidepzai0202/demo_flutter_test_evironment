import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:styles/style/style.dart';

class InformationValue extends StatelessWidget {
  final int value;
  final String title;

  const InformationValue({super.key, required this.value, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      padding: const EdgeInsets.only(left: 16, right: 6,top: 6,bottom: 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          border:
              Border.all(width: 1, color: theme.color.grey.withOpacity(0.1))),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [_title(), const Spacer(), _percent()],
      ),
    );
  }

  Widget _title() {
    return Text(
      title,
      style: theme.font.t14M,
    );
  }

  Widget _percent() {
    final formattedAmount = NumberFormat("#,###").format(value);
    return Container(
      // height: 36,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: theme.color.grey.withOpacity(0.2)),
      child: Text(
        "$formattedAmountđ",
        style: theme.font.t14B.copyWith(color: theme.color.blue),
      ),
    );
  }
}
