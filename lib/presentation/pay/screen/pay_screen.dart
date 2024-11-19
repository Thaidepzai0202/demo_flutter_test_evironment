import 'package:demo_flutter_test_evironment/presentation/common/common_account_source/common_account_source.dart';
import 'package:flutter/material.dart';
import 'package:styles/style/style.dart';

class PayScreen extends StatefulWidget {
  const PayScreen({super.key});

  @override
  State<PayScreen> createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: Text(
          "Nộp tiền",
          style: theme.font.t18B,
        ),
      ),
      body: Column(
        children: [_accountSource(), _space(), _informationAccount()],
      ),
    );
  }

  Widget _accountSource() {
    return CommonAccountSource(
        title: "Tài khoản nguồn",
        balance: 1000000000,
        typeAccount: "TK thanh toán",
        accountNumber: "3565162135657846");
  }

  Widget _space() {
    return Container(
      height: 4,
      margin: const EdgeInsets.only(top: 12),
      color: theme.color.grey.withOpacity(0.2),
    );
  }

  Widget _informationAccount() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Thông tin người nộp",
            style: theme.font.t16B,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "Tên khách hàng",
              style: theme.font.t14M.copyWith(color: theme.color.grey),
            ),
          ),
          TextFormField(
            // controller: ,
            

            decoration: InputDecoration(
                suffixIcon: Icon(Icons.ice_skating_outlined),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                      width: 1, color: theme.color.grey.withOpacity(0.2)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                      width: 1, color: theme.color.grey.withOpacity(0.2)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide:
                      BorderSide(width: 1, color: theme.color.primaryColor),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        BorderSide(width: 1, color: theme.color.purpleAccent))),
          )
        ],
      ),
    );
  }
}
