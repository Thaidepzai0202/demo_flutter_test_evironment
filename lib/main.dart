import 'package:demo_flutter_test_evironment/presentation/application/application.dart';
import 'package:demo_flutter_test_evironment/presentation/common/button_primary/button_primary.dart';
import 'package:demo_flutter_test_evironment/presentation/common/button_primary/button_primary_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:styles/style/style.dart';

import 'generated/assets.gen.dart';

void main() {
  runApp(const Application());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: theme.color.primaryColor),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    setStyleDefault();
    print("init");
    super.initState();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      // _counter--;
    });
  }


  @override
  void didChangeDependencies() {
    print("did change dependencies");
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    print("did update widget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print("deactivate");
    super.deactivate();
  }

  @override
  void dispose() {
    print("dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      backgroundColor: theme.color.background,
      appBar: AppBar(
        backgroundColor: theme.color.primaryColor,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style:
                  theme.font.t12B.copyWith(color: theme.color.textPrimaryColor),
            ),
            Text(
              '$_counter',
              style:
                  theme.font.t16M.copyWith(color: theme.color.textPrimaryColor),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  // ThemeManager.updateThemMode(isDarkMode: !isDarkLight);
                  ThemeManager.updateThemMode(isDarkMode: isDarkLight);
                });
              },
              icon: const Icon(Icons.change_circle_outlined),
              color: theme.color.textPrimaryColor,
            ),
            ButtonPrimary(
              onTap: () {
                setState(() {
                  ThemeManager.updateThemMode(isDarkMode: isDarkLight);
                });
              },
              // icon: SvgPicture.asset(Assets.icon.backward.path,color: theme.color.background,),
              text: "Button",
            ),
            ButtonPrimary2(
              onTap: () {
                _showBottomSheet();
              },
              text: "Thêm",
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: theme.color.primaryColor,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  _showBottomSheet() {
    showModalBottomSheet(
        backgroundColor: theme.color.background,
        isScrollControlled: true,
        context: context,
        builder: (context) => Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24.0),
                    child: Text(
                      "Thêm mới khách hàng",
                      style: theme.font.t18B
                          .copyWith(color: theme.color.textPrimaryColor),
                    ),
                  ),
                  ButtonPrimary(
                    onTap: () {},
                    text: "Cá nhân",
                  ),
                  ButtonPrimary(
                    onTap: () {},
                    text: "Công ty",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ButtonPrimary2(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    text: "Bỏ qua",
                  ),
                ],
              ),
            ));
  }
}
