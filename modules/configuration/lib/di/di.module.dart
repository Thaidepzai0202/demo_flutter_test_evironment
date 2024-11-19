//@GeneratedMicroModule;ConfigurationPackageModule;package:configuration/di/di.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:configuration/di/module/network_module.dart' as _i594;
import 'package:configuration/environment/build_config.dart' as _i352;
import 'package:configuration/environment/build_config_beta.dart' as _i135;
import 'package:configuration/environment/build_config_devnet.dart' as _i941;
import 'package:configuration/environment/build_config_pilot.dart' as _i888;
import 'package:configuration/environment/build_config_prod.dart' as _i522;
import 'package:configuration/environment/build_config_qc.dart' as _i618;
import 'package:dio/dio.dart' as _i361;
import 'package:injectable/injectable.dart' as _i526;

const String _qc = 'qc';
const String _pilot = 'pilot';
const String _devnet = 'devnet';
const String _prod = 'prod';
const String _beta = 'beta';

class ConfigurationPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    final networkModule = _$NetworkModule();
    gh.factory<_i361.Dio>(() => networkModule.dio);
    gh.factory<_i352.BuildConfig>(
      () => _i618.BuildConfigQc(),
      registerFor: {_qc},
    );
    gh.factory<_i352.BuildConfig>(
      () => _i888.BuildConfigPilot(),
      registerFor: {_pilot},
    );
    gh.factory<_i352.BuildConfig>(
      () => _i941.BuildConfigDevNet(),
      registerFor: {_devnet},
    );
    gh.factory<_i352.BuildConfig>(
      () => _i522.BuildConfigProd(),
      registerFor: {_prod},
    );
    gh.factory<_i352.BuildConfig>(
      () => _i135.BuildConfigBeta(),
      registerFor: {_beta},
    );
  }
}

class _$NetworkModule extends _i594.NetworkModule {}
