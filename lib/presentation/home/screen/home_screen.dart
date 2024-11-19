import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:demo_flutter_test_evironment/presentation/home/screen/component/appointment.dart';
import 'package:demo_flutter_test_evironment/presentation/home/screen/component/chart_KPI.dart';
import 'package:demo_flutter_test_evironment/presentation/home/widget/chart_home.dart';
import 'package:demo_flutter_test_evironment/presentation/home/widget/information_percent.dart';
import 'package:demo_flutter_test_evironment/presentation/home/widget/information_value.dart';
import 'package:demo_flutter_test_evironment/presentation/home/widget/title_note_right.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:styles/style/style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _bottomNavIndex = 0;
  final iconList = <IconData>[
    Icons.home_filled,
    Icons.file_present,
    Icons.favorite_outline,
    Icons.extension,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.color.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            _chart(),
            _appointment()
          ],
        ),
      ),
      floatingActionButton: _centerButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        activeIndex: _bottomNavIndex,
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index;
          });
        },
        itemCount: iconList.length,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.smoothEdge,
        tabBuilder: (int index, bool isActive) {
          final Color color = isActive
              ? theme.color.primaryColor
              : theme.color.textPrimaryColor;
          return Icon(
            iconList[index],
            color: color,
          );
        },
      ),
    );
  }

  Widget _appointment() {
    return const Appointment();
  }

  Widget _chart() {
    return const ChartKpi();
  }

  Widget _centerButton() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: theme.color.primaryColor,
      ),
      padding: const EdgeInsets.all(12),
      child: Icon(
        Icons.qr_code,
        size: 28,
        color: theme.color.white,
      ),
    );
  }
}
