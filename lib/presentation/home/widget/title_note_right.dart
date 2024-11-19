import 'package:flutter/material.dart';
import 'package:styles/style/style.dart';

class TitleNoteRight extends StatelessWidget {
  final String content;
  final int? valueNumber;
  final Function() onTap;

  const TitleNoteRight(
      {super.key,
      required this.content,
      this.valueNumber,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: theme.color.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Text(
              content,
              style:
                  theme.font.t12B.copyWith(color: theme.color.textPrimary2Color),
            ),
            if (valueNumber != null)
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Text(valueNumber.toString(),
                    style: theme.font.t14B.copyWith(
                      color: theme.color.blue,
                    )),
              )
          ],
        ),
      ),
    );
  }
}
