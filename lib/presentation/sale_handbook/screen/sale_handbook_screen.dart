import 'package:demo_flutter_test_evironment/presentation/sale_handbook/widget/item_sale_handbook.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:styles/style/style.dart';

import '../../../generated/assets.gen.dart';

class SaleHandbookScreen extends StatefulWidget {
  const SaleHandbookScreen({super.key});

  @override
  State<SaleHandbookScreen> createState() => _SaleHandbookScreenState();
}

class _SaleHandbookScreenState extends State<SaleHandbookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: theme.color.background,
          leading: InkWell(onTap: () {
            Navigator.pop(context);
          }, child: Icon(Icons.arrow_back)),
          title: Text(
            "Sổ tay bán hàng",
            style: theme.font.t22B,
          ),
        ),
        backgroundColor: theme.color.background,
        body: _main_screen());
  }

  AppBar _appBar() {
    return AppBar(
      title: Text(
        "Sổ tay bán hàng",
        style: theme.font.t18B,
      ),
    );
  }

  Widget _main_screen() {
    return Container(
      margin: const EdgeInsets.all(24),
      padding: const EdgeInsets.all(8),
      decoration: DecorationContainer().white20radius,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ItemSaleHandbook(
            content: "Sản phẩm dịch vụ",
            imagePath: Assets.icon.call.path,
            onTap: () {},
          ),
          _divider(),
          ItemSaleHandbook(
            content: "Ước tính khoản tiết kiệm",
            imagePath: Assets.icon.backward.path,
            onTap: () {},
          ),
          _divider(),
          ItemSaleHandbook(
            content: "Biểu lãi xuất",
            imagePath: Assets.icon.doNotBleach.path,
            onTap: () {},
          ),
          _divider(),
          ItemSaleHandbook(
            content: "Tỷ giá",
            imagePath: Assets.icon.doNotTumbleDry.path,
            onTap: () {},
          ),
          _divider(),
          ItemSaleHandbook(
            content: "Tìm kiếm ATM/PGD",
            imagePath: Assets.icon.doNotWash.path,
            onTap: () {},
          ),
          _divider(),
          ItemSaleHandbook(
            content: "Câu hỏi thường gặp",
            imagePath: Assets.icon.export.path,
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _divider() {
    return Container(
      color: Colors.black12,
      height: 1,
    );
  }
}
