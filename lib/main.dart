import 'package:car_shop/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'app/routes/app_pages.dart';
// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/foundation.dart';

void main() {
  runApp(
      // DevicePreview(
      // enabled: !kReleaseMode,
      // builder: (context) =>
      GetMaterialApp(
    title: "Application",
    initialRoute: AppPages.INITIAL,
    getPages: AppPages.routes,
    debugShowCheckedModeBanner: false,
    theme: myTheme(),
    localizationsDelegates: [
      GlobalCupertinoLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
    supportedLocales: [
      const Locale('ar', ''), // English, no country code
      const Locale('en', ''), // Arabic, no country code
    ],
    locale: Locale("fa", "IR"),
    //),
  ));
}
