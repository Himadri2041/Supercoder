import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/input_field.dart';
import '../../widgets/primary_button.dart';

class PasswordSettingsPage extends StatelessWidget {
  final TextEditingController currentCtrl = TextEditingController();
  final TextEditingController newCtrl = TextEditingController();
  final TextEditingController confirmCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Custom back
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 12.0),
                      child: Icon(
                        Icons.chevron_left,
                        size: 32,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  // Big Title
                  const Text(
                    "Password Settings",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            InputField(
              hint: 'Current Password',
              controller: currentCtrl,
              obscure: true,
            ),
            SizedBox(height: 10),
            InputField(
              hint: 'New Password',
              controller: newCtrl,
              obscure: true,
            ),
            SizedBox(height: 10),
            InputField(
              hint: 'Confirm Password',
              controller: confirmCtrl,
              obscure: true,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          width: double.infinity,
          child: PrimaryButton(label: "Save", onTap: () {}),
        ),
      ),
    );
  }
}
