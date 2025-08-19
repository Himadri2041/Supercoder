import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app_routes.dart';
import 'bindings/initial_binding.dart';
import 'splash_page.dart'; // <-- Import SplashPage

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Campaign App',
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBinding(),
      home: const SplashPage(),
      getPages: AppPages.pages,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
