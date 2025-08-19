import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/input_field.dart';
import '../../widgets/primary_button.dart';
import '../../controllers/profile_controller.dart';

class BasicInfoPage extends StatelessWidget {
  final ProfileController pc = Get.find();

  final TextEditingController idCtrl = TextEditingController();
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController phoneCtrl = TextEditingController();
  final TextEditingController nickCtrl = TextEditingController();
  final TextEditingController instaCtrl = TextEditingController();
  final TextEditingController linkCtrl = TextEditingController();

  BasicInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Load saved values into text controllers
    idCtrl.text = pc.id.value;
    emailCtrl.text = pc.email.value;
    phoneCtrl.text = pc.phone.value;
    nickCtrl.text = pc.nickname.value;
    instaCtrl.text = pc.instagram.value;
    linkCtrl.text = pc.portfolioLink.value;

    return Scaffold(
      resizeToAvoidBottomInset: true,
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
                    "Basic Information",
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
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InputField(hint: 'ID', controller: idCtrl),
              const SizedBox(height: 10),
              InputField(hint: 'Email', controller: emailCtrl),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: InputField(
                      hint: 'Phone number',
                      controller: phoneCtrl,
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF440D7E), // purple background
                      foregroundColor: Colors.white, // white text
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          6,
                        ), // small rounded corners
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                    ),
                    child: const Text('Change'),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              InputField(hint: 'Nickname', controller: nickCtrl),
              const SizedBox(height: 10),
              InputField(hint: 'Instagram ID', controller: instaCtrl),
              const SizedBox(height: 10),
              InputField(hint: 'Main work link', controller: linkCtrl),
              const SizedBox(height: 10),
              InputField(
                hint: 'Portfolio (file)',
                controller: TextEditingController(),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          width: double.infinity,
          child: PrimaryButton(
            label: "Save",
            onTap: () {
              pc.id.value = idCtrl.text;
              pc.email.value = emailCtrl.text;
              pc.phone.value = phoneCtrl.text;
              pc.nickname.value = nickCtrl.text;
              pc.instagram.value = instaCtrl.text;
              pc.portfolioLink.value = linkCtrl.text;

              pc.saveBasicInfo();
            },
          ),
        ),
      ),
    );
  }
}
