import 'package:cardealership/app/pages/favorite.dart';
import 'package:cardealership/app/pages/home_screen.dart';
import 'package:cardealership/app/pages/login_screen.dart';
import 'package:cardealership/app/pages/register_screen.dart';
import 'package:cardealership/app/pages/spare_parts.dart';
import 'package:cardealership/app/theme/my_themes.dart';
import 'package:cardealership/app/theme/theme_manager.dart';
import 'package:flutter/material.dart';

import 'app/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeManager.instance.getMode(),
      initialRoute: "splash",
      routes: {
        "splash": (context) => const SplashScreen(),
        "login": (context) => const LoginScreen(),
        "register": (context) => const RegisterScreen(),
        "home": (context) => const HomeScreen(),
        "favorite": (context) => Favorite(),
        "spareParts": (context) => const SpareParts()
      },
    );
  }
}
