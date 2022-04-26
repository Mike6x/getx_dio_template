import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '/app/core/values/app_colors.dart';
import '/app/routes/app_pages.dart';
import '/flavors/build_config.dart';
import '/flavors/env_config.dart';
import 'routes/app_routes.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final EnvConfig _envConfig = BuildConfig.instance.config;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context) => GetMaterialApp(
        title: _envConfig.appName,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: AppColors.colorPrimarySwatch,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: Brightness.light,
          primaryColor: AppColors.colorPrimary,
          textTheme: const TextTheme(
            button: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          fontFamily: 'Roboto',
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: _getSupportedLocal(),
        initialRoute: AppRoutes.INITIAL,
        defaultTransition: Transition.fade,
        getPages: AppPages.pages,
      ),
    );
  }
}

  List<Locale> _getSupportedLocal() {
    return [
      const Locale('en', ''),
      const Locale('bn', ''),
    ];
  }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   final EnvConfig _envConfig = BuildConfig.instance.config;

//   @override
//   Widget build(BuildContext context) {
//     ScreenUtil.init(context, designSize: const Size(360, 690));
//     return GetMaterialApp(
//       title: _envConfig.appName,
//       initialRoute: AppRoutes.MAIN,
//       initialBinding: InitialBinding(),
//       getPages: AppPages.pages,
//       localizationsDelegates: AppLocalizations.localizationsDelegates,
//       supportedLocales: _getSupportedLocal(),
//       theme: ThemeData(
//         primarySwatch: AppColors.colorPrimarySwatch,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//         brightness: Brightness.light,
//         primaryColor: AppColors.colorPrimary,
//         textTheme: const TextTheme(
//           button: TextStyle(
//             color: Colors.white,
//             fontSize: 20.0,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         fontFamily: 'Roboto',
//       ),
//       debugShowCheckedModeBanner: false,
//     );
//   }


// }
