import 'package:demo_flutter_test_evironment/presentation/pay/pay_route.dart';
import 'package:flutter/material.dart';
import 'package:styles/style/style.dart';

import '../../widget/chart_home.dart';
import '../../widget/information_percent.dart';
import '../../widget/information_value.dart';
import '../../widget/title_note_right.dart';

class ChartKpi extends StatelessWidget {
  const ChartKpi({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Theo dõi KPI", style: theme.font.t24w900),
              TitleNoteRight(
                content: "Chi tiết",
                onTap: () {
                  PayRoute.push();
                },
              )
            ],
          ),
        ),
        Container(
          decoration: DecorationContainer().white20radius,
          margin: const EdgeInsets.all(16),
          child: Column(
            children: [
              ChartHome(),
              const InformationPercent(x: 401, y: 800, title: "Hoàn thành"),
              const InformationValue(value: 1500000, title: "Lượng hiệu quả"),
              const InformationValue(
                  value: 1200000, title: "Lượng khuyến khích"),
              const SizedBox(
                height: 24,
              )
            ],
          ),
        ),
      ],
    );
  }
}
