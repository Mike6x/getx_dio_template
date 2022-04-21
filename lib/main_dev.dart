import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '/app/my_app.dart';
import '/flavors/build_config.dart';
import '/flavors/env_config.dart';
import '/flavors/environment.dart';



void main() {
  EnvConfig devConfig = EnvConfig(
    appName: "Flutter GetX Template Dev",
    baseUrl: "https://reqres.in",
    //baseUrl: "https://api.github.com",
    shouldCollectCrashLog: true,
  );

  BuildConfig.instantiate(
    envType: Environment.DEVELOPMENT,
    envConfig: devConfig,
  );

  //runApp(const MyApp());

  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(), // Wrap your app
  ));
}
