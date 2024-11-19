import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt= GetIt.instance;

@InjectableInit.microPackage()
Future<void>configurationDependencies({required String env}) async{}