import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:styles/style/style.dart';

class ItemSaleHandbook extends StatelessWidget {
  final Function() onTap;
  final String content;
  final String imagePath;

  const ItemSaleHandbook(
      {super.key,
      required this.content,
      required this.imagePath,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 52,
        child: Row(
          children: [
            const SizedBox(
              width: 6,
            ),
            SvgPicture.asset(
              imagePath,
              width: 24,
              height: 24,
              color: theme.color.primaryColor,
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              content,
              style: theme.font.textPrimaryButtonStyle,
            ),
            const Spacer(),
            const Icon(
              Icons.keyboard_arrow_right,
            )
          ],
        ),
      ),
    );
  }
}
