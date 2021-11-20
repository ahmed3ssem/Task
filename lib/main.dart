import 'package:flutter/material.dart';
import 'package:task/view/home.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    child: const MyApp(),
    path: "resources",
    saveLocale: true,
    supportedLocales: const [
      Locale('ar','AR'),
    ],
  ));
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales:  [
        Locale("en", "EN"), // OR Locale('ar', 'AE') OR Other RTL locales
    ],
      locale: context.locale,
      home:  const Home(),
    );
  }

}