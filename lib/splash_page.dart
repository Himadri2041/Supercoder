import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app_routes.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Get.offAllNamed(Routes.HOME);
    });

    return Scaffold(
      backgroundColor: const Color(0xFF440D7E),
      body: const Center(
        child: Text(
          "My Flyn",
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }
}
