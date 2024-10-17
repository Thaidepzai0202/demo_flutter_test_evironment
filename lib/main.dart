import 'package:flutter/material.dart';
import 'package:styles/style/style.dart';

void main() {
  runApp(const MyApp());
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
    super.initState();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      // _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
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
              style: theme.font.t12B.copyWith(color: theme.color.textPrimaryColor),
            ),
            Text(
              '$_counter',
              style: theme.font.t16M.copyWith(color: theme.color.textPrimaryColor),
            ),
            IconButton(onPressed: (){
             setState(() {
               // ThemeManager.updateThemMode(isDarkMode: !isDarkLight);
               ThemeManager.updateThemMode(isDarkMode: isDarkLight);
             });
            }, icon: Icon(Icons.change_circle_outlined))
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
}
