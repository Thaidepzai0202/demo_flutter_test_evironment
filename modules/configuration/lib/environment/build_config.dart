import 'package:injectable/injectable.dart';

abstract class CustomEnv {
  static const String qc = 'qc';
  static const String beta = 'beta';
  static const String prod = 'prod';
  static const String pilot = 'pilot';
  static const String devnet = 'devnet';
}

const qc = Environment(CustomEnv.qc);
const beta = Environment(CustomEnv.beta);
const prod = Environment(CustomEnv.prod);
const pilot = Environment(CustomEnv.pilot);
const devnet = Environment(CustomEnv.devnet);

abstract class BuildConfig {
  //Api
  String get host;

  String get hostWeb;

  String get hostSocketIO;
}
