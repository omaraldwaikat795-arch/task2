import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram_ui/core/units/db_helper.dart';
import 'package:instagram_ui/core/units/shared_preferences%20_helper.dart';
import 'package:instagram_ui/screen/custom_wedget_screen.dart';
import 'package:instagram_ui/screen/image_piker_screen.dart';
import 'package:instagram_ui/screen/instgram.dart';
import 'package:instagram_ui/screen/navbar.dart';

import 'sqllite_screen.dart' show SqlliteScreen;



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp ( EasyLocalization(
  supportedLocales: [Locale('en'), Locale('ar')],
  path: 'assets/translations',
  fallbackLocale: Locale('en'),
  child: MyApp()
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SqlliteScreen(),
    );
  }
}