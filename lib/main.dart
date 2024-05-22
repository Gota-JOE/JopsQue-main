import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:graduated_project/screen/splach_screen/splach_screen.dart';

void main() {
  //runApp(MyApp());
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              centerTitle: true,
              foregroundColor: Colors.black,
              elevation: 0,
              backgroundColor: Color(0xfffafafa))),
      debugShowCheckedModeBanner: false,
      title: 'graduted project',
      home: const SplashScreen(),
    );
  }
}

/*void main() {
  runApp(
    GetMaterialApp(
      title: 'Graduted Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          foregroundColor: Colors.black,
          elevation: 0,
          backgroundColor: Color(0xfffafafa),
        ),
      ),
      home: const SplashScreen(),
    ),
  );
}*/
