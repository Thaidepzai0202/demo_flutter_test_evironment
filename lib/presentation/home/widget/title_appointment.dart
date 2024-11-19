import 'package:flutter/material.dart';
import 'package:styles/style/style.dart';

class TitleAppointment extends StatelessWidget {
  final DateTime dateTime;
  final int quantity;
  final bool isSelect;
  final Function() ontap;

  const TitleAppointment(
      {super.key,
      required this.dateTime,
      required this.quantity,
      required this.ontap,
      required this.isSelect});

  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: ontap,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        padding: const EdgeInsets.only(right: 3),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: theme.color.white,
            border:
                isSelect ? Border.all(color: theme.color.blue, width: 1) : null),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "${dateTime.day}/${dateTime.month}",
                style: theme.font.t14M.copyWith(
                    color: isSelect
                        ? theme.color.blue
                        : theme.color.textPrimaryColor),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSelect
                      ? theme.color.blue
                      : theme.color.grey.withOpacity(0.2)),
              padding: const EdgeInsets.all(10),
              child: Text(
                quantity.toString(),
                style: theme.font.t14B.copyWith(
                    color: isSelect
                        ? theme.color.white
                        : theme.color.textPrimaryColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
