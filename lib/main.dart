import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_easy_localization/ui/home/home_screen.dart';
import 'package:test_easy_localization/utils/theme.dart';

Future<void>main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales: const [
      Locale('en', 'EN'),
      Locale('uz', 'UZ'),
      Locale('ru', 'RU'),
    ],
    fallbackLocale: const Locale('en', 'EN'),
    path: 'assets/translations',
    child: const MyApp(),  ) );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      home: const HomeScreen(),

      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,

    );
  }
}
