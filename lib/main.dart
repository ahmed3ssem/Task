import 'package:flutter/material.dart';
import 'package:task/view/bottomnavigationbarscreen.dart';
import 'package:task/view/home.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:task/view/home_tab_view.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    child: const MyApp(),
    path: "resources",
    saveLocale: true,
    supportedLocales: const [
      Locale('ar','AR'),
      Locale('en','EN'),
    ],
  ));
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: BottomNavigationBarScreen(),
    );
  }

}